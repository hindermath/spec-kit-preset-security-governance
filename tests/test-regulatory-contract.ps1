#Requires -Version 7
<#
.SYNOPSIS
Prueft den regulatorischen Preset-Vertrag offline.
.DESCRIPTION
DE: Nur strukturelle Regression und synthetische Beispiele; keine Rechtsbewertung.
EN: Read-only structural regression and synthetic examples, never legal approval.
.PARAMETER PackageRoot
DE: Wurzel des Preset-Checkouts. EN: Root of the preset checkout.
.EXAMPLE
pwsh -NoProfile -File tests/test-regulatory-contract.ps1
#>
[CmdletBinding()]
param([string]$PackageRoot = (Split-Path -Parent $PSScriptRoot))
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
function Assert-RegulatoryText {
    param([string]$Text, [string]$Expected, [string]$Context)
    if (-not $Text.Contains($Expected)) { throw ("Missing contract '{0}' in {1}" -f $Expected,$Context) }
}
function Assert-RegulatoryExample {
    param([hashtable]$Record)
    foreach ($key in @('scope','decision','owner','reviewer','source','role','directDuties','contractDuties','evidence','trigger')) {
        if (-not $Record.ContainsKey($key) -or [string]::IsNullOrWhiteSpace([string]$Record[$key])) {
            throw ("Missing example field {0}" -f $key)
        }
    }
    if ($Record.scope -cnotin @('sample product','development tooling','operating organisation')) { throw 'Invalid scope' }
    if ($Record.decision -cnotin @('Applicable','N/A','Open')) { throw 'Invalid decision' }
    if ($Record.decision -ceq 'N/A' -and
        (-not $Record.ContainsKey('rationale') -or [string]::IsNullOrWhiteSpace([string]$Record.rationale))) {
        throw 'N/A without rationale'
    }
    if ($Record.decision -ceq 'Open' -and
        (-not $Record.ContainsKey('nextAction') -or [string]::IsNullOrWhiteSpace([string]$Record.nextAction))) {
        throw 'Open without action'
    }
    if ($Record.role -ceq 'Unknown' -and $Record.decision -cne 'Open') { throw 'Unknown role must remain Open' }
    # Fixture structure only: applicability decisions are reviewed inputs, never inferred.
}
$manifest = [IO.File]::ReadAllText((Join-Path $PackageRoot 'preset.yml'))
Assert-RegulatoryText $manifest 'version: "0.7.0"' 'manifest'
$registered = [regex]::Matches($manifest, '(?m)^\s+file: "([^"]+)"')
if ($registered.Count -ne 22) { throw "Expected 22 provided entries, got $($registered.Count)" }
foreach ($entry in $registered) {
    if (-not (Test-Path -LiteralPath (Join-Path $PackageRoot $entry.Groups[1].Value) -PathType Leaf)) { throw 'Missing registered file' }
}
foreach ($id in @('gdpr','ai-act','cra','nis2','dora')) {
    Assert-RegulatoryText $manifest ('name: "' + $id + '-applicability-template"') 'registration'
    $content = [IO.File]::ReadAllText((Join-Path $PackageRoot ("templates/{0}-applicability-template.md" -f $id)))
    foreach ($field in @('Decision: [Applicable / N/A / Open]','Country / jurisdiction:','Direct legal duties:',
            'Contractual / customer-derived duties:','Owner / reviewer:','Official source / version',
            'N/A rationale / reevaluation trigger:','Open finding / next action / owner / due date:')) {
        Assert-RegulatoryText $content $field $id
    }
}
foreach ($phase in @('specify','plan','tasks')) {
    $content = [IO.File]::ReadAllText((Join-Path $PackageRoot ("commands/speckit.{0}.md" -f $phase)))
    if ([regex]::Matches($content, '\{CORE_TEMPLATE\}').Count -ne 1) { throw 'Wrapper core placeholder drift' }
    foreach ($term in @('GDPR','AI Act','CRA','NIS2','DORA','AI-SBOM: N/A does not decide','Unknown remains Open')) {
        Assert-RegulatoryText $content $term ("wrapper {0}" -f $phase)
    }
}
foreach ($surface in @('constitution','spec','plan','tasks','agent-file')) {
    $content = [IO.File]::ReadAllText((Join-Path $PackageRoot ("templates/{0}-addendum.md" -f $surface)))
    foreach ($term in @('GDPR','AI Act','CRA','NIS2','DORA','direct and contractual','Education is not a blanket exemption')) {
        Assert-RegulatoryText $content $term $surface
    }
}
$cra = [IO.File]::ReadAllText((Join-Path $PackageRoot 'templates/cra-applicability-template.md'))
foreach ($term in @('class I/II','Article 32','14 days after','one month after incident notification')) {
    Assert-RegulatoryText $cra $term 'CRA'
}
$nis = [IO.File]::ReadAllText((Join-Path $PackageRoot 'templates/nis2-applicability-template.md'))
foreach ($term in @('national transposition','trust-service special rule','within 24 hours for significant incidents affecting trust services','2024/2690','A repository is not a legal entity')) {
    Assert-RegulatoryText $nis $term 'NIS2'
}
$dora = [IO.File]::ReadAllText((Join-Path $PackageRoot 'templates/dora-applicability-template.md'))
foreach ($term in @('2025/301','2024/1772','2025/302','2024/2956','Ordinary provider versus designated critical provider')) {
    Assert-RegulatoryText $dora $term 'DORA'
}
$base = @{
    scope='sample product'; decision='N/A'; owner='Synthetic owner'; reviewer='Synthetic reviewer'
    source='Official act and article, verified for fixture'; role='Educational sample maintainer'
    directDuties='None in the scoped synthetic case'; contractDuties='None in the scoped synthetic case'
    evidence='Controlled synthetic scope assessment'; trigger='Use, role or data changes'; rationale='Scoped synthetic example'
}
$scenarios = @(
    @{name='Synthetic sample without personal data'; scope='sample product'; decision='N/A'; role='Sample maintainer'},
    @{name='Real personal data in development logs'; scope='development tooling'; decision='Applicable'; role='Controller'; directDuties='Reviewed privacy obligations'},
    @{name='Development AI tool'; scope='development tooling'; decision='Open'; role='Unknown'},
    @{name='NIS2 entity'; scope='operating organisation'; decision='Applicable'; role='Reviewed essential entity'; directDuties='Reviewed risk-management and incident duties'},
    @{name='Ordinary financial-sector supplier'; scope='operating organisation'; decision='Applicable'; role='Ordinary ICT supplier, contractual scope'; contractDuties='Specific reviewed ICT contract requirements'},
    @{name='Designated critical ICT provider'; scope='operating organisation'; decision='Applicable'; role='Critical provider with designation evidence'; directDuties='Reviewed designation-bound oversight duties'}
)
foreach ($scenario in $scenarios) {
    $record = $base.Clone()
    foreach ($key in @('scope','decision','role')) { $record[$key] = $scenario[$key] }
    foreach ($key in @('directDuties','contractDuties')) {
        if ($scenario.ContainsKey($key)) { $record[$key] = $scenario[$key] }
    }
    if ($record.decision -ceq 'Open') { $record.nextAction = 'Qualified role/source review' }
    Assert-RegulatoryExample $record
    Write-Output "PASS synthetic record: $($scenario.name)"
}
foreach ($fault in @('owner','source','rationale','unknown-role','open-action','invalid-scope','invalid-decision','contractDuties')) {
    $record = $base.Clone()
    switch ($fault) {
        'unknown-role' { $record.role = 'Unknown' }
        'open-action' { $record.decision = 'Open' }
        'invalid-scope' { $record.scope = 'all' }
        'invalid-decision' { $record.decision = 'Ready' }
        default { $record.Remove($fault) }
    }
    $rejected = $false
    try { Assert-RegulatoryExample $record } catch { $rejected = $true }
    if (-not $rejected) { throw ("Negative fixture accepted: {0}" -f $fault) }
    Write-Output ("PASS negative fixture: {0}" -f $fault)
}
$rejected = $false
try { Assert-RegulatoryText ($cra.Replace('14 days after','')) '14 days after' 'mutated CRA' } catch { $rejected = $true }
if (-not $rejected) { throw 'Contract removal was not detected' }
Write-Output 'PASS: structural contract, six reviewed-input examples and nine negative regressions; no legal approval.'
