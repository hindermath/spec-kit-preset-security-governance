# Security Governance Preset

Version: `0.6.1`
Status: published, standard governance preset
Priority: `10`
Requires: Spec-Kit `>=0.8.0` (uses the `wrap` and `append` composition
strategies introduced in `0.8.x`).

## Zweck / Purpose

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

```bash
specify preset add \
  --from https://github.com/hindermath/spec-kit-preset-security-governance/archive/refs/tags/v0.6.1.zip \
  --priority 10
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
| 10 | `security-governance` |
| 20 | `architecture-governance` |
| 30 | `isaqb-architecture-governance` |
| 40 | `a11y-governance` |
| 50 | `cross-platform-governance` |
| 60 | `agent-parity-governance` |

*Install this preset first in the standard governance matrix. Later presets
can add architecture, accessibility, cross-platform, and agent-parity rules
without weakening the security baseline.*

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

Default evidence location: `docs/security/`. MSL justification may live in the
feature spec, local constitution, or another governance document, but should
be referenced from planning artifacts.

## AI-SBOM und Regulatorik / AI-SBOM and Regulation

- AI used only as development tooling is documented as `N/A` with a short
  toolchain rationale.
- AI models, AI services, training or embedding datasets, inference
  infrastructure, or AI runtime components in the released or operated system
  trigger AI-SBOM evidence.
- NIS2, CRA, EU AI Act, DORA, sector-specific rules, and customer or
  supply-chain obligations are screened through
  `regulatory-applicability-template`.
- Private training, learning, and reference projects default to `N/A` when no
  regulated service, regulated customer, EU-market product, AI runtime or
  product component, financial-sector ICT dependency, or regulated
  supply-chain role exists.

## Prüfung / Verification

```bash
specify preset list
specify preset info security-governance
specify preset resolve
specify check
```

Prüfe zusätzlich, ob die Security-Evidence-Orte im Projekt existieren oder im
Plan ausdrücklich als zu erzeugende Artefakte stehen.

*Also verify that the project either already contains the security evidence
locations or explicitly plans their creation.*

## Fehlersuche / Troubleshooting

### Security wirkt doppelt / Security Appears Twice

Prüfe mit `specify preset resolve`, ob das Preset mehrfach installiert wurde
oder ob lokale Templates denselben Abschnitt bereits enthalten.

### N/A ist unklar / N/A Is Unclear

Ergänze eine kurze Begründung mit Evidence-Pfad, Reviewer und Follow-up. Ein
leeres `N/A` ist keine prüffähige Entscheidung.

### Architekturfragen werden sichtbar / Architecture Questions Appear

Nutze `architecture-governance` zusätzlich, wenn Trust Boundaries,
Threat-Modeling, Zero Trust, S-ADRs oder Cloud-Assurance über die Code- und
SDLC-Ebene hinausgehen.

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
