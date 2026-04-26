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
  - `SLSA` applies as a target model for CI/CD-built or published artefacts.
  - `OpenSSF Scorecard` applies to public OSS repositories or high-impact
    external dependencies.
- Record any justified `N/A` decisions for the standards above.
- Identify whether this feature needs:
  - `msl-applicability`
  - `security-checklist`
  - `secure-coding-language-rules`
  - `dependency-audit`
  - `asvs-verification`
  - `supply-chain-evidence`
  - `cra-applicability`

## Security Evidence Expectations

- Evidence files default to `docs/security/`.
- When a feature changes dependencies, build integrity, or HTTP-facing
  behaviour, include explicit evidence expectations in the specification.
- When a feature changes user-visible product distribution, EU market
  presence, or vulnerability handling processes, record CRA implications.
- When secrets, cryptographic primitives, authentication, or authorisation
  flows change, record the affected `CWE Top 25` weaknesses and chosen
  mitigations.
