## Security Governance Applicability

- Record the primary implementation language and whether it is memory-safe.
- If the primary implementation language is not memory-safe, include a short
  written justification that names the constraint.
- If the primary implementation language is memory-safe, explicitly apply the
  secure-coding best practices of that language and framework.
- List the applicable secure-development standards for this feature:
  - `NIST SSDF` and `CWE Top 25` always apply for production-bound work.
  - `OWASP ASVS` applies to web, API, HTTP, and authentication-bearing services
    (record the chosen ASVS Level: 1, 2, or 3).
  - `SBOM` and `VEX` apply to release-capable or distributable artefacts.
  - `AI-SBOM` applies when AI models, AI services, datasets, inference
    infrastructure, or AI runtime components are part of the released or
    operated system.
  - `SLSA` applies as a target model for CI/CD-built or published artefacts.
  - `OpenSSF Scorecard` applies to public OSS repositories or high-impact
    external dependencies.
- `NIS2`, `CRA`, `EU AI Act`, and `DORA` are screened through regulatory
  applicability when release, market placement, customer handover, cloud
  operation, AI runtime/product components, financial-sector ICT dependencies,
  or regulated customers/supply chains are in scope.
- Record any justified `N/A` decisions for the standards above.
- Identify whether this feature needs:
  - `msl-applicability`
  - `security-checklist`
  - `secure-coding-language-rules`
  - `dependency-audit`
  - `asvs-verification`
  - `supply-chain-evidence`
  - `cra-applicability`
  - `regulatory-applicability`

## Security Evidence Expectations

- Evidence files default to `docs/security/`.
- When a feature changes dependencies, build integrity, or HTTP-facing
  behaviour, include explicit evidence expectations in the specification.
- When a feature uses AI only as development tooling, record `AI-SBOM` as
  `N/A` with a short toolchain rationale. When AI runtime or product
  components are present, declare the supply-chain evidence path for the
  G7/BSI AI-SBOM clusters.
- When a feature changes user-visible product distribution, EU market
  presence, or vulnerability handling processes, record CRA implications.
- When secrets, cryptographic primitives, authentication, or authorisation
  flows change, record the affected `CWE Top 25` weaknesses and chosen
  mitigations.

## Audit Evidence Applicability

- Record whether this Spec-Kit run requires an evidence document or checklist update.
- Use `Applicable`, `N/A`, or `Open` for each relevant standard or governance checkpoint.
- Document every `N/A` decision with a short rationale and re-evaluation trigger.
- Link the planned evidence path from the feature spec; silent omission is not allowed.

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
