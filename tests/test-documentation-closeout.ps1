#Requires -Version 7.3
<#
.SYNOPSIS
    Dokumentationsvertraege pruefen / Check documentation contracts.
.DESCRIPTION
    DE: Quellen, Leserpfade, Rollen und Negativfaelle lesen; keine Modelle,
    persoenlichen Profile, Netzwerk- oder Repository-Aenderungen.
    EN: Read sources, reader paths, roles and negatives; no models,
    personal profiles, network or repository mutations.
.PARAMETER CohortRoot
    Optional: Verzeichnis aller 14 Kandidatenquellen / Folder of all 14 candidates.
.EXAMPLE
    pwsh -NoProfile -File tests/test-documentation-closeout.ps1
.EXAMPLE
    pwsh -NoProfile -File tests/test-documentation-closeout.ps1 -CohortRoot ../
#>
[CmdletBinding()]
param([string]$CohortRoot = '')
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$script:checks = 0
function Assert-DocRequirement {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw "Documentation contract: $Message" }
    $script:checks++
}
function Test-DocVersionMarker {
    param([string]$Text, [string]$Version)
    $markers = [regex]::Matches($Text, '<!-- current-package: ([0-9.]+) -->')
    return $markers.Count -eq 1 -and $markers[0].Groups[1].Value -ceq $Version
}
function Test-DocInstallLine {
    param([string]$Text, [string]$Expected)
    return [regex]::IsMatch($Text, '(?m)^\s*' + [regex]::Escape($Expected) + '\r?$')
}
function Test-DocHeadingBoundary {
    param([string]$Text)
    return [regex]::Matches($Text, '<a id="[^"]+"></a>\r?\n\r?\n## ').Count -eq 6
}
function Get-DocCommand {
    param([string]$Manifest)
    return @([regex]::Matches($Manifest, '\bname:\s*"(speckit\.[^"]+)"') | ForEach-Object { $_.Groups[1].Value })
}
function Test-DocFileLink {
    param([string]$Text, [string]$Directory)
    foreach ($match in [regex]::Matches($Text, '\]\(([^)\s]+)\)')) {
        $target = $match.Groups[1].Value.Trim('<', '>')
        if ($target -match '^(https?:|mailto:|#|codex:)' -or $target -match '[{}]') { continue }
        $target = ($target -split '#', 2)[0]
        if ($target -and -not (Test-Path -LiteralPath (Join-Path $Directory $target))) { return $false }
    }
    return $true
}
function Assert-DocRoutingCoverage {
    param([string]$Directory)
    $manifest = [IO.File]::ReadAllText((Join-Path $Directory 'preset.yml'))
    $path = Join-Path $Directory 'model-routing.json'
    Assert-DocRequirement (Test-Path -LiteralPath $path -PathType Leaf) "routing missing: $Directory"
    $catalog = Get-Content -LiteralPath $path -Raw | ConvertFrom-Json -AsHashtable
    Assert-DocRequirement ($catalog.schemaVersion -ceq '1.0' -and $catalog.fallbackPolicy -ceq 'fail-closed') 'stable schema and fail-closed'
    $roles = @('script-only','fast-mechanical','long-running-implementation','coding-review','frontier-reasoning')
    Assert-DocRequirement ($catalog.defaultRole -cin $roles) 'known default role'
    foreach ($role in $catalog.commands.Values) { Assert-DocRequirement ($role -cin $roles) 'known command role' }
    $commands = @(Get-DocCommand $manifest)
    foreach ($command in $commands) { Assert-DocRequirement ($catalog.commands.ContainsKey($command)) "unmapped command $command" }
    return $commands.Count
}
$package = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'fixtures/documentation-package.json') -Raw | ConvertFrom-Json
$cohort = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'fixtures/documentation-targets.json') -Raw | ConvertFrom-Json -AsHashtable
$manifest = [IO.File]::ReadAllText((Join-Path $root 'preset.yml'))
$id = [regex]::Match($manifest, '(?m)^  id: "([^"]+)"').Groups[1].Value
$version = [regex]::Match($manifest, '(?m)^  version: "([^"]+)"').Groups[1].Value
Assert-DocRequirement ($manifest -match '(?m)^schema_version: "1\.0"$') 'manifest schema remains 1.0'
Assert-DocRequirement ($package.id -ceq $id -and $package.version -ceq $version) 'package fixture matches manifest'
Assert-DocRequirement ($cohort.presets.ContainsKey($id) -and $cohort.presets[$id].version -ceq $version) 'candidate cohort version'
Assert-DocRequirement ($cohort.presets.Count -eq 14) '14 candidate entries'
Assert-DocRequirement ($package.priority -eq $cohort.presets[$id].priority) 'documented priority'
$readme = [IO.File]::ReadAllText((Join-Path $root 'README.md'))
$install = "specify preset add --from https://github.com/hindermath/spec-kit-preset-$id/archive/refs/tags/v$version.zip --priority $($package.priority)"
Assert-DocRequirement (Test-DocInstallLine $readme $install) 'one-line exact candidate installation'
Assert-DocRequirement (Test-DocVersionMarker $readme $version) 'README version marker'
Assert-DocRequirement ($readme.Contains('docs/user-guide.md') -and $readme.Contains('docs/user-guide.EN.md')) 'paired reader navigation'
$guides = @()
foreach ($reader in $package.readers) {
    $text = [IO.File]::ReadAllText((Join-Path $root $reader))
    Assert-DocRequirement (Test-DocVersionMarker $text $version) "reader version: $reader"
    if ($reader -like '*user-guide*') { $guides += $text }
}
Assert-DocRequirement ($guides.Count -eq 2) 'two language partners'
$anchorPattern = '<a id="([^"]+)"></a>'
$deIds = @([regex]::Matches($guides[0],$anchorPattern) | ForEach-Object {$_.Groups[1].Value})
$enIds = @([regex]::Matches($guides[1],$anchorPattern) | ForEach-Object {$_.Groups[1].Value})
Assert-DocRequirement (($deIds -join ',') -ceq 'start,example,terms,routing,help,references') 'complete German path'
Assert-DocRequirement (($deIds -join ',') -ceq ($enIds -join ',')) 'matching language navigation'
foreach ($text in $guides) {
    Assert-DocRequirement (Test-DocHeadingBoundary $text) 'HTML anchors do not swallow Markdown headings'
    Assert-DocRequirement ([regex]::Matches($text, '(?m)^~~~').Count -eq 4) 'two closed example code blocks'
    Assert-DocRequirement ($text.Contains('CEFR B2') -and $text.Contains('WCAG 2.2 AA')) 'language/accessibility targets'
    foreach ($fragment in [regex]::Matches($text,'\]\(#([^)]+)\)')) {
        Assert-DocRequirement ($deIds -ccontains $fragment.Groups[1].Value) 'guide anchor'
    }
}
$catalog = Get-Content -LiteralPath (Join-Path $root 'model-routing.json') -Raw | ConvertFrom-Json -AsHashtable
foreach ($command in $catalog.commands.Keys) {
    foreach ($text in $guides) {
        Assert-DocRequirement ($text.Contains($command) -and $text.Contains($catalog.commands[$command])) 'equivalent role vocabulary'
    }
}
$ownCount = Assert-DocRoutingCoverage $root
$files = @(Get-Item -LiteralPath (Join-Path $root 'README.md'))
foreach ($part in @('docs','commands','templates')) {
    $directory = Join-Path $root $part
    if (Test-Path -LiteralPath $directory) { $files += @(Get-ChildItem -LiteralPath $directory -File -Filter '*.md' -Recurse) }
}
foreach ($file in $files) {
    Assert-DocRequirement (Test-DocFileLink ([IO.File]::ReadAllText($file.FullName)) $file.DirectoryName) "file links: $($file.FullName)"
}
# In-memory negative fixtures; never rewrite sources or golden files.
Assert-DocRequirement (-not (Test-DocVersionMarker '<!-- current-package: 0.0.0 -->' $version)) 'stale version rejected'
Assert-DocRequirement (-not (Test-DocVersionMarker ($guides[0]+[Environment]::NewLine+"<!-- current-package: $version -->") $version)) 'ambiguous version rejected'
Assert-DocRequirement (-not (Test-DocInstallLine ($install.Replace(' --priority',[Environment]::NewLine+' --priority')) $install)) 'multiline install rejected'
Assert-DocRequirement (-not (Test-DocFileLink '[missing](definitely-missing-document.md)' $root)) 'missing help rejected'
Assert-DocRequirement (-not (Test-DocVersionMarker $guides[1] '0.0.0')) 'stale language partner rejected'
$brokenHeading = [regex]::Replace($guides[0], '\r?\n\r?\n## ', [Environment]::NewLine+'## ')
Assert-DocRequirement (-not (Test-DocHeadingBoundary $brokenHeading)) 'raw HTML swallowing headings rejected'
if ($id -in @('autonomous-run-governance','parallel-autonomous-run-governance')) {
    $compatibility = [IO.File]::ReadAllText((Join-Path $root 'docs/compatibility.md'))
    Assert-DocRequirement (Test-DocVersionMarker $compatibility $version) 'compatibility version'
    Assert-DocRequirement ($compatibility.Contains('v0.4.6') -and $compatibility.Contains('v0.2.8')) 'coordinated example'
    Assert-DocRequirement (-not $compatibility.Contains('No newer unpublished candidate')) 'stale no-candidate claim rejected'
    Assert-DocRequirement (-not $compatibility.Contains('The currently tested pair')) 'historical pair not claimed as new'
}
if ($id -like 'intake-*-governance') {
    foreach ($text in @($readme)+$guides) {
        foreach ($pairVersion in @('0.3.9','0.2.6','0.2.10')) { Assert-DocRequirement ($text.Contains($pairVersion)) 'coordinated intake targets' }
    }
}
if ($CohortRoot) {
    $count = 0
    foreach ($entry in $cohort.presets.GetEnumerator()) {
        $directory = Join-Path $CohortRoot ('spec-kit-preset-'+$entry.Key)
        $otherManifest = [IO.File]::ReadAllText((Join-Path $directory 'preset.yml'))
        $otherVersion = [regex]::Match($otherManifest,'(?m)^  version: "([^"]+)"').Groups[1].Value
        Assert-DocRequirement ($otherVersion -ceq $entry.Value.version) "actual cohort source: $($entry.Key)"
        $count += Assert-DocRoutingCoverage $directory
        $otherTargets = Get-Content -LiteralPath (Join-Path $directory 'tests/fixtures/documentation-targets.json') -Raw | ConvertFrom-Json -AsHashtable
        Assert-DocRequirement (($otherTargets|ConvertTo-Json -Depth 8 -Compress) -ceq ($cohort|ConvertTo-Json -Depth 8 -Compress)) 'identical cohort fixture'
    }
    Assert-DocRequirement ($count -eq 49) '49 declarations; no skipped missing catalogs'
}
"PASS: $script:checks documentation assertions; own declarations=$ownCount; no models/network/writes."
exit 0
