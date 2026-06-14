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
