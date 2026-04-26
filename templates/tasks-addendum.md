## Security Tasks

- Add an explicit MSL applicability or justification task when the feature
  changes primary runtime, language, or implementation constraints.
- Add explicit secure-coding review tasks for any change to input handling,
  authentication, authorisation, cryptography, file I/O, or network I/O.
- Reference the relevant language section from
  `secure-coding-language-rules-template` (C, C#/.NET, SQL, Bash,
  PowerShell, …) in those tasks.
- Add `CWE Top 25` mapping tasks for security-relevant changes so that the
  chosen mitigation per affected weakness is recorded explicitly.
- Add dependency-audit tasks when dependencies, registries, or build tooling
  change. Include automation tasks (Renovatebot/Dependabot configuration,
  Dependency Track ingestion of CI-built SBOMs) where missing.
- Add ASVS verification tasks for web or API features. The task description
  MUST name the chosen ASVS Level (1, 2, or 3) and the verification scope.
- Add SBOM, VEX, SLSA, and (where relevant) OpenSSF Scorecard evidence
  tasks when release artefacts are affected.
- Add a CRA applicability task whenever distribution, EU market reach,
  vulnerability disclosure, or conformity assessment scope is touched.
- Add or update entries in `docs/security/` (default location) for each new
  evidence artefact created during the feature.
