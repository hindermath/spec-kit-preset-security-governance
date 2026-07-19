## Security Governance Agent Guidance

- Determine whether the primary implementation language is memory-safe.
- If it is not memory-safe, surface the justification (constraint named,
  not just the fact restated) rather than silently ignoring the rule.
- If it is memory-safe, still apply the secure-coding best practices of that
  specific MSL and framework — MSL preference does not replace secure code
  generation.
- For every security-relevant change, identify the affected `CWE Top 25`
  weaknesses and record the chosen mitigation. Do not leave this implicit.
- Determine whether `NIST SSDF`, `OWASP ASVS` (with explicit Level 1/2/3),
  `SBOM`, `AI-SBOM`, `VEX`, `SLSA`, and `OpenSSF Scorecard` apply.
- For Web/API features, name the chosen ASVS Level and the verification
  scope; never leave the level unspecified.
- For dependency changes, prefer Renovatebot/Dependabot for update PRs and
  Dependency Track for continuous CVE monitoring. Treat static audit notes
  as supplementary evidence, not as the primary control.
- For AI usage, distinguish development tooling from AI runtime/product
  components. Development-tool-only AI usage is `AI-SBOM: N/A`; AI runtime or
  product components require supply-chain evidence using the G7/BSI AI-SBOM
  clusters.
- Document every `N/A` decision with rationale.
- Surface required evidence artefacts under `docs/security/`. Default
  templates: `security-checklist`, `secure-coding-language-rules`,
  `dependency-audit`, `asvs-verification`, `supply-chain-evidence`,
  `msl-applicability`, `cra-applicability`, `regulatory-applicability`.
- For any change that affects distribution, EU market reach, or
  vulnerability handling, surface the EU Cyber Resilience Act applicability
  question instead of leaving it implicit.
- For release, market placement, customer handover, cloud operation, AI
  runtime/product components, financial-sector ICT dependencies, or regulated
  customers/supply chains, surface regulatory applicability for `NIS2`, `CRA`,
  `EU AI Act`, and `DORA`. Private training projects may record explicit
  `N/A` when no regulated scope exists.
- Classify provider or billing rejection separately from a technical security
  gate. A zero-step provider refusal is not a passing test and may be `N/A`
  only under an explicit, narrow, time-bounded exception with compensating
  evidence.
- A repository-policy or administrator bypass never replaces security
  validation, exact-head evidence, or review evidence.
- Keep runner, status, and model provenance free of credentials, tokens,
  personal identifiers, and inferred secret configuration.

## Audit-Ready Spec-Kit Evidence

- When this preset applies, generated or updated Markdown evidence must include the Spec-Kit run, owner/reviewer, evidence path, applicability decision, N/A rationale where relevant, and open follow-up tracking.
- Do not treat an unfilled starter template as evidence. Evidence exists only after the current run has recorded concrete decisions, paths, and rationale.
