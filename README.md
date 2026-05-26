# Security Governance Preset

Version: `0.4.0`
Requires: `spec-kit >= 0.8.0` (uses the `wrap` and `append` composition
strategies introduced in 0.8.x).

Purpose:

- inject secure-development governance into Spec Kit workflows
- cover code-level controls, language-specific secure-coding profiles, SDLC
  controls, SBOM/AI-SBOM supply-chain transparency, and EU regulatory
  awareness
- stay focused on code and process; architectural depth lives in the
  `architecture-governance` preset

Primary source chapters from `home-baseline` constitution:

- `XI. Memory-Safe Languages (MSL) Preference for Level-2 Projects`
- `XII. Secure Code Generation`
- security-related applicability rules from `XIV`
- `XV. Secure SDLC & Verification Standards`
- `XVI. Supply-Chain Transparency & Build Integrity`
- `XIX. EU Cyber Resilience Act (CRA) Awareness`

Standards in scope:

- `MSL preference`
- `NIST SSDF` (SP 800-218)
- `CWE Top 25`
- `OWASP ASVS` with explicit Level 1/2/3 selection
- `SBOM` and `VEX`
- `AI-SBOM` / G7 SBOM for AI minimum elements
- `SLSA`
- `OpenSSF Scorecard`
- `EU CRA` (Regulation (EU) 2024/2847)

Preset strategy:

- append governance sections to `constitution-template`, `spec-template`,
  `plan-template`, and `tasks-template`
- provide a standalone agent-guidance addendum template for projects that
  maintain agent instruction files
- wrap `speckit.specify`, `speckit.plan`, and `speckit.tasks` with a small
  shared security workflow
- provide concrete evidence templates for secure-development artefacts,
  including a CRA applicability record and language-specific secure-coding
  rules

Evidence templates included:

- `msl-applicability-template`
- `secure-coding-language-rules-template` (C, C#/.NET, Rust, Go, Swift,
  Java/Kotlin, Python, TypeScript/JavaScript, SQL, Bash, PowerShell,
  cryptography, error handling)
- `security-checklist-template` (with `CWE Top 25` mapping table)
- `dependency-audit-template` (with Renovatebot/Dependabot/Dependency
  Track automation posture)
- `asvs-verification-template` (with explicit Level 1/2/3 rationale)
- `supply-chain-evidence-template` (SBOM, AI-SBOM, VEX, SLSA, OpenSSF Scorecard)
- `cra-applicability-template`

Default evidence location: `docs/security/`. MSL justification may live in
the feature spec, local constitution, or another governance document, but
should be referenced from planning artefacts.

When to use:

- teams that want explicit secure-development prompts in specs, plans, and
  tasks
- projects with web, API, release, or dependency risk
- projects that may fall under the EU Cyber Resilience Act
- organisations that need reusable secure-development evidence stubs
- projects that use AI runtime or product components and need internal
  transparency for models, datasets, inference infrastructure, and security
  properties

AI-SBOM applicability:

- AI used only as development tooling (code generation, documentation, review,
  local agents) is documented as `N/A` with a short toolchain rationale.
- AI models, AI services, training or embedding datasets, inference
  infrastructure, or AI runtime components in the released or operated system
  trigger AI-SBOM evidence.
- The G7/BSI AI-SBOM minimum elements are treated as target architecture, not
  as a direct legal obligation by themselves.

When not to use:

- projects that want only architecture governance without SDLC-level
  security (use `architecture-governance` instead or in combination)
- teams not ready to maintain security evidence artefacts at all

MSL notes:

- this preset includes the `XI. Memory-Safe Languages` policy surface
- `Best practices of MSL languages` are treated as the combination of `XI`
  and `XII`: `XI` governs language choice; `XII` governs how the chosen
  language is used
- `v0.4.0` expands the language-specific secure-coding template so that MSL
  projects still review concrete framework/API usage for Rust, Go, Swift,
  Java/Kotlin, Python, and TypeScript/JavaScript instead of treating the
  language choice as sufficient
- the addendum surfaces a non-blocking advisory pattern; a runtime warning
  in the Spec Kit CLI itself is tracked separately

Recommended standalone install priority:

- `10`
