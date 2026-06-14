## Security Planning Checks

- Confirm whether the primary implementation language is memory-safe.
- If not, plan where the non-MSL justification will be recorded.
- If yes, plan the language-specific secure-coding work using
  `secure-coding-language-rules-template` rather than treating MSL status as
  sufficient by itself.
- Confirm which security standards apply (`NIST SSDF`, `CWE Top 25`, `OWASP
  ASVS` Level 1/2/3, `SBOM`, `AI-SBOM`, `VEX`, `SLSA`, `OpenSSF Scorecard`,
  regulatory applicability for `NIS2`, `CRA`, `EU AI Act`, and `DORA`) and who
  owns the corresponding evidence.
- Identify input handling, authentication, authorisation, cryptography,
  dependency, and supply-chain risks. Map relevant `CWE Top 25` items to
  planned mitigations.
- Decide whether ASVS verification is required for this feature, and which
  ASVS Level fits (1: simple/internal; 2: authenticated/multi-user/
  data-bearing; 3: high-assurance/regulatory).
- Decide whether SBOM, AI-SBOM, VEX, SLSA, or OpenSSF Scorecard evidence must
  be updated.
- Classify AI usage as development tooling only, absent from the released or
  operated system, or AI runtime/product component. If AI runtime or product
  components are present, plan evidence for the seven G7/BSI AI-SBOM clusters.
- Plan dependency-tracking automation: confirm that Renovatebot/Dependabot
  PRs are configured and that, where feasible, Dependency Track ingests
  CI-produced SBOMs for continuous CVE monitoring. Static dependency audits
  are supplementary, not a replacement.
- Plan a CRA applicability check for any feature that affects product
  distribution, EU market reach, vulnerability handling, or conformity
  assessment scope.
- Plan a regulatory applicability check when release, market placement,
  customer handover, cloud operation, AI runtime/product components,
  financial-sector ICT dependencies, or regulated customers/supply chains are
  in scope. Private training projects default to explicit `N/A` when no
  regulated scope exists.

## Audit Evidence Planning

- Plan audit-ready Markdown evidence for this Spec-Kit run, including owner, reviewer, evidence path, and standard-specific applicability.
- Plan how each relevant checkpoint will be recorded as `Applicable`, `N/A`, or `Open`.
- Plan concrete evidence updates under the default evidence directory for this preset; do not leave checklist templates unfilled.
- Treat `Open` as temporary: assign an owner, follow-up, and re-evaluation trigger.
