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
