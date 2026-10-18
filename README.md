# Security Governance Preset

Patch **0.7.2** liefert die verbesserte zweisprachige Einstiegs- und
Kompositionsdokumentation. Verhalten und Berechtigungsgrenzen bleiben erhalten.
[Release-Nachweis / Release record](docs/release-0.7.2-validation.md).

*Patch 0.7.2 packages the improved bilingual getting-started and composition
guide. Behavior and authority boundaries remain unchanged.*

Version: `0.7.2`
Status: stable release; professional review and native CI completed
Priority: `10`
Requires: Spec-Kit `>=0.8.0` (uses the `wrap` and `append` composition
strategies introduced in `0.8.x`).

## Zweck / Purpose

### Einstieg und Arbeitsweise / Getting Started and Workflow

Beginne im initialisierten Ziel-Repository mit Installation und Prüfung.
Danach beschreibe das Feature und seine Risiken. Das [Manifest](preset.yml)
bindet Architektur-unabhängige Security-Anweisungen über `wrap` an
Specify/Plan/Tasks und über `append` an deren Dokumentvorlagen und Constitution.
Dies ergänzt Anweisungen, führt aber keine Scanner oder Reviews aus.
Eigenständige Evidence-Starter und das Agent-Guidance-Addendum werden nur
bereitgestellt; ihre Registrierung belegt weder Verwendung noch ausgefüllte
Nachweise. Nenne Starter und konkrete Zielpfade ausdrücklich.

*Start in an initialized target repository with installation and verification,
then describe the feature and risks. The [manifest](preset.yml) wraps
Specify/Plan/Tasks and appends security guidance to their document templates
and the constitution. This integrates instructions, not scanner or review
execution. Standalone evidence starters and the agent-guidance addendum are
available separately; registration proves neither use nor completed evidence.
Explicitly name relevant starters and output paths.*

Beispiel: Für eine neue HTTP-API verwende `standard-applicability-template`
als Einstieg, `asvs-verification-template` für den vereinbarten Prüf-Scope
und `security-checklist-template` für sprachbezogene Prüfungen. Plane
`docs/security/asvs-verification.md` und konkrete Test-/Review-Tasks.
Regulatorische Fragen werden getrennt im
`regulatory-applicability-template` erfasst, nicht aus einem ASVS-Ergebnis
abgeleitet. Das ist ein Ablaufvorschlag, kein bestandenes Assessment.

*Example: for a new HTTP API, start with `standard-applicability-template`,
use `asvs-verification-template` for the agreed verification scope and
`security-checklist-template` for language-specific review. Plan
`docs/security/asvs-verification.md` and concrete test/review tasks. Record
regulatory questions separately through `regulatory-applicability-template`;
an ASVS result does not decide them. This is a workflow example, not a pass.*

Specify nennt Scope und Anwendbarkeit; Plan benennt Nachweise und Prüfungen;
Tasks benennt verbleibende Arbeit und konkrete Evidence-Dateien. Erst die
beauftragte Umsetzung und Prüfung erzeugt belastbare Ergebnisse. Bestehende
Evidence sichten und gezielt aktualisieren. `Applicable` bedeutet nicht
„bestanden“; `N/A` braucht Begründung, `Open` Owner und Folgeaktion.

*Specify records scope/applicability, Plan names evidence/verification, and
Tasks identifies remaining work and evidence files. Authorized execution and
review produce actual results. Inspect and update existing evidence rather
than duplicating it. Applicable is not passed; justify N/A and assign an owner
and follow-up to Open.*

Priorität ist Auflösungsrang, keine Ausführungsreihenfolge: kleinere Zahl
bedeutet höhere Priorität. `append` ergänzt, `wrap` verschachtelt und
`replace` kann gleichnamige Beiträge verdrängen; Projekt-Overrides können
Preset-Inhalte ersetzen. Eigene Reihenfolgen und Drittanbieter-Kombinationen
sind nicht pauschal geprüft. Prüfe die Kompositionskette mit
`specify preset resolve plan-template` und die erzeugten Agentenflächen.
`specify check` prüft Werkzeuge, nicht die Wahrheit der Security-Evidence.

*Priority is resolution precedence, not execution order: lower numbers win
precedence. Append adds, wrap nests, and replace can hide same-name layers;
project overrides can replace preset content. Custom ordering and third-party
combinations are not universally tested. Inspect plan-template resolution and
generated agent instructions. Specify check checks tools, not security evidence.*

Leserpfad / Reader path:
[Installation](#installation--installation) →
[Evidenzvorlagen / Evidence Templates](#evidenzvorlagen--evidence-templates) →
[Prüfung / Verification](#prüfung--verification) →
[Fehlersuche / Troubleshooting](#fehlersuche--troubleshooting).

Dieses Standard-Preset bringt sichere Code-Erzeugung, Secure-SDLC-Nachweise,
MSL-Governance, Supply-Chain-Transparenz und regulatorische
Anwendbarkeitsprüfung in Spec-Kit-Workflows. Es bleibt bewusst auf Code,
Abhängigkeiten, Build-Integrität und Entwicklungsprozess fokussiert;
architektonische Sicherheitstiefe liegt im Preset `architecture-governance`.

*This standard preset injects secure code generation, Secure SDLC evidence,
MSL governance, supply-chain transparency, and regulatory applicability
screening into Spec-Kit workflows. It deliberately stays focused on code,
dependencies, build integrity, and development process; secure-architecture
depth belongs to the `architecture-governance` preset.*

Das Qualitätsziel ist überprüfbare Security-Governance pro Spec-Kit-Lauf:
akzeptierte Anforderungen, nachvollziehbare Anwendbarkeit, konkrete
Sprachregeln, dokumentierte `N/A`-Entscheidungen und auditierbare Evidence.

*The quality goal is reviewable security governance per Spec-Kit run: accepted
requirements, traceable applicability, concrete language rules, documented
`N/A` decisions, and auditable evidence.*

## Zielgruppen / Audience

Dieses Preset eignet sich, wenn:

- Projekte Web-, API-, Release-, Dependency- oder Build-Risiken haben;
- Teams sichere Code-Erzeugung in `spec.md`, `plan.md` und `tasks.md`
  sichtbar machen wollen;
- Organisationen wiederverwendbare Evidence-Stubs für Secure SDLC, SBOM,
  AI-SBOM, ASVS, CRA und Regulatorik brauchen;
- Lern- und Referenzprojekte Security-Entscheidungen nachvollziehbar und
  CEFR-B2-lesbar dokumentieren sollen.

*Use this preset when projects have web, API, release, dependency, or build
risk; when teams want secure-code prompts visible in specs, plans, and tasks;
when organizations need reusable evidence stubs for Secure SDLC, SBOM,
AI-SBOM, ASVS, CRA, and regulation; or when learning projects should document
security decisions in a traceable, CEFR-B2-friendly way.*

## Lieferumfang / What It Provides

- Addenda für Constitution, Spec, Plan, Tasks und Agent-Guidance
- Wrapper für `speckit.specify`, `speckit.plan` und `speckit.tasks`
- Secure-Coding-Sprachprofile für C, C#/.NET, Rust, Go, Swift,
  Java/Kotlin, Python, TypeScript/JavaScript, SQL, Bash und PowerShell
- Evidence-Vorlagen für Standards, MSL, Secure Coding, Checklisten,
  Dependency Audit, ASVS, Supply Chain, CRA und Regulatorik
- auditfähige Spec-Kit-Run-Evidence-Felder für Anwendbarkeit,
  `N/A`-Begründung, Reviewer, Evidence-Pfad, Restrisiko und Follow-up

*The preset provides addenda for the main Spec-Kit artifacts and agent
guidance, wraps the normal Specify/Plan/Tasks flow, supplies
language-specific secure-coding profiles, and includes evidence templates for
standards, MSL, secure coding, dependency audits, ASVS, supply chain, CRA, and
regulatory screening.*

## Nicht enthalten / What It Does Not Provide

Das Preset führt keine SAST-Scans, Dependency-Audits, SBOM-Erzeugung,
Regulierungsbewertung oder Remote-Prüfung selbst aus. Es ersetzt keine
Rechtsberatung und trifft keine Projektentscheidung für `Applicable` oder
`N/A`. Es erteilt keine Repository-, Merge-, Bypass-, Deployment-, Secret-
oder Provider-Administrationsrechte.

*The preset does not run SAST, dependency audits, SBOM tooling, regulatory
assessments, or remote checks by itself. It does not replace legal advice and
does not make project applicability decisions. It grants no repository, merge,
bypass, deployment, secret, or provider-administration authority.*

## Voraussetzungen / Prerequisites

Vor der Installation sollten vorhanden sein:

1. eine kompatible GitHub Spec-Kit CLI;
2. eine gültige Spec-Kit-Integration im Ziel-Repository;
3. versionierte Constitution und Agent-Guidance;
4. ein geklärter Ort für Security-Evidence, standardmäßig `docs/security/`;
5. ein Projektverständnis für Runtime, Release-Form und regulatorische Rolle.

*Before installation, use a compatible GitHub Spec-Kit CLI, a valid Spec-Kit
integration, versioned constitution and agent guidance, a clear evidence
location, and a basic understanding of runtime, release shape, and regulatory
role.*

## Installation / Installation

### Veröffentlichter Tag / Published Tag

v0.7.1 bindet den Installationsbefehl direkt auswertbar auf einer Zeile an
das aktuelle Tag-ZIP. Der regulatorische Inhalt bleibt gegenueber v0.7.0
unveraendert. Historische Tags und Archive bleiben unveraendert;
Release- und Integrationsnachweise sind getrennt. Siehe
[Patch-Nachweis](docs/release-0.7.1-validation.md).
*v0.7.1 binds the one-line installation command to its exact tag archive.
Regulatory content is unchanged from v0.7.0. Historical tags and archives
remain immutable; release and consumer integration evidence remain separate.*

```bash
specify preset add --from https://github.com/hindermath/spec-kit-preset-security-governance/archive/refs/tags/v0.7.2.zip --priority 10
specify preset info security-governance
```

### Entwicklungs-Checkout / Development Checkout

```bash
specify preset add --dev /path/to/security-governance --priority 10
specify preset info security-governance
```

### Empfohlene Reihenfolge / Recommended Order

Dieses Preset ist die erste Stufe der normalen Governance-Matrix:

| Priority | Preset |
|---:|---|
| 10 | [security-governance](https://github.com/hindermath/spec-kit-preset-security-governance) |
| 20 | [architecture-governance](https://github.com/hindermath/spec-kit-preset-architecture-governance) |
| 30 | [isaqb-architecture-governance](https://github.com/hindermath/spec-kit-preset-isaqb-architecture-governance) |
| 40 | [a11y-governance](https://github.com/hindermath/spec-kit-preset-a11y-governance) |
| 50 | [cross-platform-governance](https://github.com/hindermath/spec-kit-preset-cross-platform-governance) |
| 60 | [agent-parity-governance](https://github.com/hindermath/spec-kit-preset-agent-parity-governance) |

*Priority 10 gives this preset high resolution precedence in the recommended
composition, not an execution schedule. Other presets can add architecture,
accessibility, cross-platform and parity guidance; inspect the effective
composition to ensure security requirements remain present.*

## Quellkapitel / Source Chapters

- `XI. Memory-Safe Languages (MSL) Preference for Level-2 Projects`
- `XII. Secure Code Generation`
- security-related applicability rules from `XIV`
- `XV. Secure SDLC & Verification Standards`
- `XVI. Supply-Chain Transparency & Build Integrity`
- `XIX. EU Cyber Resilience Act (CRA) & Regulatory Applicability Awareness`

## Standards und Regeln / Standards and Rules

- `MSL preference`
- `NIST SSDF` (SP 800-218)
- `CWE Top 25`
- `OWASP ASVS` with explicit Level 1/2/3 selection
- `SBOM` and `VEX`
- `AI-SBOM` / G7 SBOM for AI minimum elements
- `SLSA`
- `OpenSSF Scorecard`
- `EU CRA` (Regulation (EU) 2024/2847)
- `NIS2`, `EU AI Act`, and `DORA` as applicability screening topics
- `GDPR` / DS-GVO with independent privacy and DPIA-threshold evidence

MSL-Best-Practices entstehen aus zwei Regeln: `XI` steuert die Sprachwahl,
`XII` steuert die sichere Nutzung der gewählten Sprache. Eine MSL ist deshalb
kein Ersatz für konkrete API-, I/O-, Auth-, SQL-, Crypto-, Logging- oder
Dependency-Prüfung.

*MSL best practice is the combination of two rules: `XI` governs language
choice and `XII` governs secure use of the selected language. A memory-safe
language does not replace concrete API, I/O, auth, SQL, crypto, logging, or
dependency review.*

## Preset-Strategie / Preset Strategy

- Security-Abschnitte an `constitution-template`, `spec-template`,
  `plan-template` und `tasks-template` anhängen
- ein eigenständiges Agent-Guidance-Addendum bereitstellen
- `speckit.specify`, `speckit.plan` und `speckit.tasks` mit einem gemeinsamen
  Security-Workflow umhüllen
- konkrete Evidence-Vorlagen für sichere Entwicklung, CRA/Regulatorik,
  Supply Chain und sprachspezifische Secure-Coding-Regeln liefern

## Evidenzvorlagen / Evidence Templates

- `standard-applicability-template`
- `msl-applicability-template`
- `secure-coding-language-rules-template`
- `security-checklist-template`
- `dependency-audit-template`
- `asvs-verification-template`
- `supply-chain-evidence-template`
- `cra-applicability-template`
- `regulatory-applicability-template`
- `gdpr-applicability-template`
- `ai-act-applicability-template`
- `nis2-applicability-template`
- `dora-applicability-template`

Default evidence location: `docs/security/`. MSL justification may live in the
feature spec, local constitution, or another governance document, but should
be referenced from planning artifacts.

## AI-SBOM und Regulatorik / AI-SBOM and Regulation

- AI-SBOM for the released product may be `N/A` when AI is only development
  tooling; GDPR and AI Act tool-operation screening remain independent.
- AI models, AI services, training or embedding datasets, inference
  infrastructure, or AI runtime components in the released or operated system
  trigger AI-SBOM evidence.
- NIS2, CRA, EU AI Act, DORA, sector-specific rules, and customer or
  supply-chain obligations are screened through
  `regulatory-applicability-template`.
- Training/reference projects require separately justified decisions for
  product, development tooling and operating organisation; no blanket N/A.

## Prüfung / Verification

```bash
specify preset list
specify preset info security-governance
specify preset resolve regulatory-applicability-template
specify check
```

Prüfe zusätzlich, ob die Security-Evidence-Orte im Projekt existieren oder im
Plan ausdrücklich als zu erzeugende Artefakte stehen.

*Also verify that the project either already contains the security evidence
locations or explicitly plans their creation.*

## Fehlersuche / Troubleshooting

### Security wirkt doppelt / Security Appears Twice

Prüfe mit `specify preset list` den Installationsbestand und mit
`specify preset resolve plan-template` die Kompositionskette. Prüfe zusätzlich,
ob lokale Templates denselben Abschnitt bereits enthalten.

### N/A ist unklar / N/A Is Unclear

Ergänze eine kurze Begründung mit Evidence-Pfad, Reviewer und Follow-up. Ein
leeres `N/A` ist keine prüffähige Entscheidung.

### Architekturfragen werden sichtbar / Architecture Questions Appear

Nutze `architecture-governance` zusätzlich, wenn Trust Boundaries,
Threat-Modeling, Zero Trust, S-ADRs oder Cloud-Assurance über die Code- und
SDLC-Ebene hinausgehen.

## Version 0.6.2 / Version 0.6.2

`v0.6.2` veröffentlicht den agentenneutralen `model-routing.json`-Vertrag für
die Komposition mit Model Routing Governance; Sicherheitsregeln bleiben
unverändert.

*`v0.6.2` publishes the agent-neutral `model-routing.json` contract for
composition with Model Routing Governance; security rules are unchanged.*

## Version 0.6.1 / Version 0.6.1

`v0.6.1` trennt technische Security-Gates von Null-Schritt-Provider- oder
Billing-Ablehnungen, begrenzt `N/A`-Ausnahmen und stellt klar, dass ein
Admin-Bypass weder Exact-Head-Evidence noch Sicherheitsprüfung ersetzt.

*`v0.6.1` separates technical security gates from zero-step provider or
billing refusals, bounds `N/A` exceptions, and clarifies that administrator
bypass replaces neither exact-head evidence nor security validation.*

## Version 0.6.0 / Version 0.6.0

`v0.6.0` ergänzt auditfähige Spec-Kit-Run-Evidence-Felder, damit generierte
Markdown-Dokumente und Checklisten Anwendbarkeit, `N/A`-Begründung, Reviewer,
Evidence-Pfad, Restrisiko und Follow-up pro standardsrelevantem Spec-Kit-Lauf
aufzeichnen können.

*`v0.6.0` adds audit-ready Spec-Kit run evidence fields so generated Markdown
documents and checklists can record applicability, `N/A` rationale, reviewer,
evidence path, residual risk, and follow-up per standards-relevant Spec-Kit
run.*

## Kompatibilitäts- und Sicherheitsübersicht / Compatibility and Safety Summary

- kompatibel mit Spec-Kit `>=0.8.0`
- priorisiert als Stufe `10`
- kombinierbar mit den übrigen Governance-Presets
- keine automatischen Remote-, Merge-, Scan- oder Provider-Aktionen
- alle Standards- und Regulierungsentscheidungen bleiben projektbezogene
  Evidence

## License

MIT. See `LICENSE`.

## Regulatorischer Evidence-Vertrag / Regulatory evidence contract

DE: DS-GVO, KI-VO, CRA, NIS2 und DORA getrennt fuer Beispielprogramm,
Entwicklungswerkzeuge und nutzende Organisation pruefen. Rechtliche Rollen,
Land, datierte Rechtsquelle und Anwendungszeitpunkt nennen; direkte Pflichten
von vertraglichen Kunden-/Lieferkettenanforderungen trennen. Unbekannt bleibt
Open mit Owner, Aktion und Frist. N/A braucht Begruendung und Trigger.
AI-SBOM: N/A entscheidet nicht ueber DS-GVO oder KI-VO. Ausbildung ist keine
allgemeine Ausnahme. Security fuehrt die Anwendbarkeit; Architecture
referenziert diese Entscheidung fuer Datenfluesse, Schutz und Resilienz.
Technische Pruefung ist keine Rechtsfreigabe. Historische Evidence erhalten.
EN: Assess GDPR, AI Act, CRA, NIS2 and DORA separately for the sample product,
development tooling and operating organisation. Record roles, jurisdiction,
dated legal source and application date; separate direct and contractual
duties. Unknown remains Open with owner, action and due date; N/A needs
rationale and trigger. AI-SBOM: N/A does not decide GDPR/AI Act applicability.
Education is not a blanket exemption. Security owns applicability;
Architecture links decisions to data flows, safeguards and resilience.
Technical validation grants no legal approval; preserve historical evidence.

Use regulatory-applicability-template as the index and link
gdpr-applicability-template, ai-act-applicability-template,
cra-applicability-template, nis2-applicability-template and
dora-applicability-template where relevant. An unfilled record is not evidence.

DE: v0.7.0 liefert vier neue portable Vorlagen fuer Datenschutz, KI-VO,
NIS2 und DORA und praezisiert CRA. Bestehende Schnittstellen bleiben erhalten.
EN: v0.7.0 adds four portable records and precise CRA screening without
changing existing commands or granting compliance approval.

[Quellen, Grenzen und Tests / Sources, boundaries and tests](docs/regulatory-evidence-contract.md).
