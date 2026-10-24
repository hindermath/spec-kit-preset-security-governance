#Requires -Version 7.3
<#
.SYNOPSIS
DE: Historischen Kandidatenstand und belegte Veröffentlichung getrennt prüfen.
EN: Check historical candidate state separately from evidenced publication.
.DESCRIPTION
DE: Liest nur lokale Dokumente, Git-Tags und isolierte Daten-Fixtures. Kein
Netzwerk, Modell, Profil, Schreibzugriff oder menschlicher Freigabeersatz.
EN: Reads local documents, Git tags and isolated data fixtures only. No network,
model, profile, writes or replacement for human acceptance.
.EXAMPLE
pwsh -NoProfile -File tests/test-release-status.ps1
#>
[CmdletBinding()]
param()
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$script:releaseChecks = 0
function Assert-ReleaseStatus {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw "Release-status contract: $Message" }
    $script:releaseChecks++
}
function Get-ReleaseTextDigest {
    param([string]$Text)
    $normal = $Text.TrimStart([char]0xfeff).Replace("`r`n", "`n").Replace("`r", "`n")
    return [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData([Text.Encoding]::UTF8.GetBytes($normal))).ToLowerInvariant()
}
function ConvertTo-ReleaseInstant {
    param($Value)
    # DE/EN: Preserve timezone information when PowerShell auto-parses JSON dates.
    if ($Value -is [DateTimeOffset]) { return $Value }
    if ($Value -is [DateTime]) { return [DateTimeOffset]::new($Value) }
    return [DateTimeOffset]::Parse([string]$Value, [Globalization.CultureInfo]::InvariantCulture)
}
function Test-ReleaseBinding {
    param($Record)
    try {
        if ($Record.schemaVersion -ne 1 -or $Record.candidate_status -cne 'HistoricalCandidate') { return $false }
        if ($Record.version -cnotmatch '^[0-9]+\.[0-9]+\.[0-9]+$' -or $Record.presetId -cnotmatch '^[a-z0-9]+(?:-[a-z0-9]+)*$') { return $false }
        if ($Record.tag -cne ('v' + $Record.version) -or $Record.tagCommit -cnotmatch '^[a-f0-9]{40}$') { return $false }
        if ($Record.comparison.toTag -cne $Record.tag -or $Record.comparison.toCommit -cne $Record.tagCommit -or
            $Record.comparison.fromTag -cnotmatch '^v[0-9]+\.[0-9]+\.[0-9]+$' -or
            $Record.comparison.fromCommit -cnotmatch '^[a-f0-9]{40}$') { return $false }
        $repo = 'https://github.com/hindermath/spec-kit-preset-' + $Record.presetId
        if ($Record.repository -cne $repo) { return $false }
        if ($Record.release_status -ceq 'Published') {
            if ($Record.release.url -cne "$repo/releases/tag/$($Record.tag)" -or $Record.release.id -le 0 -or
                $Record.release.draft -isnot [bool] -or $Record.release.draft -or
                $Record.release.preRelease -isnot [bool] -or $Record.release.preRelease) { return $false }
            $published = ConvertTo-ReleaseInstant $Record.release.publishedAt
            $verified = ConvertTo-ReleaseInstant $Record.verifiedAt
            if ($verified -lt $published) { return $false }
        } elseif ($Record.release_status -ceq 'TagOnly') {
            if ($null -ne $Record.release -or [string]::IsNullOrWhiteSpace($Record.openEvidence)) { return $false }
        } else { return $false }
        if ($Record.archive.status -ceq 'Verified') {
            if ($Record.archive.url -cne "$repo/archive/refs/tags/$($Record.tag).zip" -or
                $Record.archive.sha256 -cnotmatch '^[a-f0-9]{64}$' -or $Record.archive.bytes -le 0 -or
                [string]::IsNullOrWhiteSpace($Record.archive.verifiedAt)) { return $false }
            $null = ConvertTo-ReleaseInstant $Record.archive.verifiedAt
        } elseif ($Record.archive.status -ceq 'Missing') {
            if ([string]::IsNullOrWhiteSpace($Record.archive.reason) -or $Record.evidenceComplete) { return $false }
        } else { return $false }
        $complete = $Record.release_status -ceq 'Published' -and $Record.archive.status -ceq 'Verified'
        return $Record.evidenceComplete -is [bool] -and $Record.evidenceComplete -eq $complete
    } catch { return $false }
}
function Test-ReleaseCurrentText {
    param([string]$Text, $Record)
    $normal = $Text.Replace("`r`n", "`n")
    $historicalMatches = [regex]::Matches($normal, '(?s)<!-- historical-candidate:start -->\n(.*?)<!-- historical-candidate:end -->')
    if ($historicalMatches.Count -ne 1) { return $false }
    $current = [regex]::Replace($normal, '(?s)<!-- historical-candidate:start -->\n.*?<!-- historical-candidate:end -->', '')
    if ($current -notmatch ('\x60candidate_status\x60\s*\|\s*\x60' + $Record.candidate_status + '\x60') -or
        $current -notmatch ('\x60release_status\x60\s*\|\s*\x60' + $Record.release_status + '\x60')) { return $false }
    if ($current -match '(?i)nicht ver[öo]ffentlicht|not published|Quellkandidat|source candidate|prepared for review|zur Sichtung vorbereitet') { return $false }
    return $current.Contains($Record.tagCommit) -and $current.Contains($Record.archive.sha256)
}
$manifest = [IO.File]::ReadAllText((Join-Path $root 'preset.yml'))
$id = [regex]::Match($manifest, '(?m)^  id: "([^"]+)"').Groups[1].Value
$version = [regex]::Match($manifest, '(?m)^  version: "([^"]+)"').Groups[1].Value
$recordPath = Join-Path $root "docs/release-$version-publication.json"
$record = Get-Content -LiteralPath $recordPath -Raw | ConvertFrom-Json -AsHashtable -Depth 100
$document = [IO.File]::ReadAllText((Join-Path $root "docs/release-$version-validation.md"))
Assert-ReleaseStatus ($record.presetId -ceq $id -and $record.version -ceq $version) 'manifest identity'
Assert-ReleaseStatus (Test-ReleaseBinding $record) 'publication evidence'
Assert-ReleaseStatus (Test-ReleaseCurrentText $document $record) 'historical/current sections'
$lfDocument = $document.Replace("`r`n", "`n")
$crlfDocument = $lfDocument.Replace("`n", "`r`n")
Assert-ReleaseStatus (Test-ReleaseCurrentText $lfDocument $record) 'LF document'
Assert-ReleaseStatus (Test-ReleaseCurrentText $crlfDocument $record) 'CRLF document'
Assert-ReleaseStatus ($crlfDocument.Replace("`r`n", "`n").Replace("`n", "`r`n") -ceq
    $crlfDocument) 'CRLF fixture is idempotent on an existing CRLF checkout'
$normal = $document.Replace("`r`n", "`n")
$historical = [regex]::Match($normal, '(?s)<!-- historical-candidate:start -->\n(.*?)<!-- historical-candidate:end -->').Groups[1].Value
$original = ($normal -split "`n", 2)[0] + "`n" + $historical
Assert-ReleaseStatus ((Get-ReleaseTextDigest $original) -ceq $record.historicalDocumentSha256) 'original candidate text preserved'
# DE: Ein Tag ist weder Release-Review noch Archivprüfung; Git prüft nur die Bindung.
# EN: A tag is not release acceptance or an archive check; Git checks identity only.
$tagCommit = @(& git -C $root rev-parse --verify "$($record.tag)^{commit}" 2>$null)
Assert-ReleaseStatus ($LASTEXITCODE -eq 0 -and $tagCommit.Count -eq 1 -and $tagCommit[0] -ceq $record.tagCommit) 'actual tag/commit'
$beforeCommit = @(& git -C $root rev-parse --verify "$($record.comparison.fromTag)^{commit}" 2>$null)
Assert-ReleaseStatus ($LASTEXITCODE -eq 0 -and $beforeCommit.Count -eq 1 -and
    $beforeCommit[0] -ceq $record.comparison.fromCommit) 'actual comparison baseline'
$info = [Diagnostics.ProcessStartInfo]::new('git')
foreach ($argument in @('-C',$root,'show',"$($record.tag):docs/release-$version-validation.md")) { $info.ArgumentList.Add($argument) }
$info.UseShellExecute = $false; $info.RedirectStandardOutput = $true; $info.RedirectStandardError = $true
$info.StandardOutputEncoding = [Text.Encoding]::UTF8
$process = [Diagnostics.Process]::Start($info)
$tagDocument = $process.StandardOutput.ReadToEnd(); $null = $process.StandardError.ReadToEnd()
$process.WaitForExit()
Assert-ReleaseStatus ($process.ExitCode -eq 0 -and (Get-ReleaseTextDigest $tagDocument) -ceq
    $record.historicalDocumentSha256) 'historical text hash matches immutable tag blob'
foreach ($mutate in @(
    { param($x) $x.candidate_status = 'Published' },
    { param($x) $x.release_status = 'NotPublished' },
    { param($x) $x.tag = 'v99.99.99' },
    { param($x) $x.tagCommit = 'wrong' },
    { param($x) $x.release.url = 'https://example.invalid/release' },
    { param($x) $x.release.draft = $true },
    { param($x) $x.release.preRelease = $true },
    { param($x) $x.release.publishedAt = 'invalid' },
    { param($x) $x.archive.sha256 = 'unverified' },
    { param($x) $x.archive.url = 'https://example.invalid/archive.zip' },
    { param($x) $x.archive.bytes = 0 },
    { param($x) $x.archive.verifiedAt = 'invalid' },
    { param($x) $x.comparison.toCommit = '0000000000000000000000000000000000000000' },
    { param($x) $x.comparison.fromCommit = 'wrong' }
)) {
    $copy = $record | ConvertTo-Json -Depth 100 | ConvertFrom-Json -AsHashtable -Depth 100
    & $mutate $copy
    Assert-ReleaseStatus (-not (Test-ReleaseBinding $copy)) 'invalid publication fixture rejected'
}
$partial = $record | ConvertTo-Json -Depth 100 | ConvertFrom-Json -AsHashtable -Depth 100
$partial.archive = @{ status='Missing'; reason='Fixture: archive evidence remains Open.' }
$partial.evidenceComplete = $false
Assert-ReleaseStatus (Test-ReleaseBinding $partial) 'real publication and missing archive evidence stay separate'
$partial.evidenceComplete = $true
Assert-ReleaseStatus (-not (Test-ReleaseBinding $partial)) 'missing archive cannot claim complete evidence'
$tagOnly = $record | ConvertTo-Json -Depth 100 | ConvertFrom-Json -AsHashtable -Depth 100
$tagOnly.release_status = 'TagOnly'; $tagOnly.release = $null
$tagOnly.openEvidence = 'Fixture: GitHub release evidence remains Open.'
$tagOnly.evidenceComplete = $false
Assert-ReleaseStatus (Test-ReleaseBinding $tagOnly) 'tag evidence is distinct from a GitHub release'
$tagOnly.evidenceComplete = $true
Assert-ReleaseStatus (-not (Test-ReleaseBinding $tagOnly)) 'tag-only cannot claim completed publication evidence'
foreach ($wrong in @('Status: nicht veröffentlicht.', 'Status: not published.', 'Quellkandidat', 'Source candidate')) {
    Assert-ReleaseStatus (-not (Test-ReleaseCurrentText ($document + "`n$wrong`n") $record)) 'unqualified current contradiction rejected'
}
Assert-ReleaseStatus (-not (Test-ReleaseCurrentText ($document.Replace('<!-- historical-candidate:start -->','')) $record)) 'missing historical boundary rejected'
Assert-ReleaseStatus ($document.Contains('## Verbesserungsprofil / Improvement profile') -and
    $document.Contains($record.comparison.fromCommit) -and $document.Contains($record.comparison.toCommit)) 'exact comparison and reader profile'
Assert-ReleaseStatus ($record.comparison.fromTag -cne $record.comparison.toTag -and $record.improvements.Count -gt 0) 'non-empty versioned improvements'
foreach ($reader in @('README.md','docs/user-guide.md','docs/user-guide.EN.md')) {
    $content = [IO.File]::ReadAllText((Join-Path $root $reader))
    $intro = (@($content -split '\r?\n' | Select-Object -First 30) -join ' ')
    Assert-ReleaseStatus ($content.Contains("release-$version-validation.md")) 'publication reader navigation'
    Assert-ReleaseStatus ($intro -notmatch '(?i)Quellkandidat|source candidate|not published|nicht veröffentlicht') 'reader entry has current publication state'
}
foreach ($change in $record.improvements) {
    Assert-ReleaseStatus ($change.description.de -and $change.description.en -and $change.benefit.de -and $change.benefit.en -and
        $change.problem.de -and $change.problem.en -and $change.sourcePaths.Count -gt 0 -and $change.introducedIn) 'bilingual source-backed improvement'
    foreach ($path in $change.sourcePaths) {
        $null = & git -C $root cat-file -e "$($change.commit):$path" 2>$null
        Assert-ReleaseStatus ($LASTEXITCODE -eq 0) 'immutable improvement source exists'
    }
}
Write-Output "PASS: $script:releaseChecks release-status/history/improvement assertions; offline and read-only."
