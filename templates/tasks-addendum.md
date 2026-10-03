## Security Tasks

- Add an explicit MSL applicability or justification task when the feature
  changes primary runtime, language, or implementation constraints.
- Add explicit secure-coding review tasks for any change to input handling,
  authentication, authorisation, cryptography, file I/O, or network I/O.
- Reference the relevant language section from
  `secure-coding-language-rules-template` (C, C#/.NET, Rust, Go, Swift,
  Java/Kotlin, Python, TypeScript/JavaScript, SQL, Bash, PowerShell, …) in
  those tasks. MSL status alone is not sufficient evidence of secure API,
  I/O, authentication, database, cryptography, logging, or dependency usage.
- Add `CWE Top 25` mapping tasks for security-relevant changes so that the
  chosen mitigation per affected weakness is recorded explicitly.
- Add dependency-audit tasks when dependencies, registries, or build tooling
  change. Include automation tasks (Renovatebot/Dependabot configuration,
  Dependency Track ingestion of CI-built SBOMs) where missing.
- Add ASVS verification tasks for web or API features. The task description
  MUST name the chosen ASVS Level (1, 2, or 3) and the verification scope.
- Add SBOM, AI-SBOM, VEX, SLSA, and (where relevant) OpenSSF Scorecard
  evidence tasks when release artefacts are affected.
- Add an AI-SBOM applicability task when AI is used: document `N/A` for
  development-tool-only or absent runtime/product usage; otherwise update
  supply-chain evidence with the G7/BSI AI-SBOM clusters.
- Add a CRA applicability task whenever distribution, EU market reach,
  vulnerability disclosure, or conformity assessment scope is touched.
- Add a regulatory applicability task for `NIS2`, `CRA`, `EU AI Act`, and
  `DORA` when release, market placement, customer handover, cloud operation,
  AI runtime/product components, financial-sector ICT dependencies, or
  regulated customers/supply chains are in scope. For private training
  projects, record explicit `N/A` rationale when no regulated scope exists.
- Add or update entries in `docs/security/` (default location) for each new
  evidence artefact created during the feature.

## Audit Evidence Tasks

- Add tasks to create or update the Markdown evidence/checklist documents for this Spec-Kit run.
- Each task must name the target evidence file, the standard or governance checkpoint, and the expected decision: `Applicable`, `N/A`, or `Open`.
- Add tasks to fill evidence rows with reviewer, date, evidence path, residual risk, and follow-up where relevant.
- Add tasks to verify that no relevant checkpoint was silently omitted.

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
