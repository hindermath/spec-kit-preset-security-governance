Before continuing, apply the Security Governance preset:

- determine whether the primary implementation language is memory-safe
- document a short justification if the language is not memory-safe
- determine whether `NIST SSDF`, `CWE Top 25`, `OWASP ASVS`, `SBOM`, `VEX`,
  `AI-SBOM`, and `SLSA` are relevant
- document `N/A` decisions with rationale
- identify which security evidence artefacts should be created or updated under
  `docs/security/`

{CORE_TEMPLATE}

Audit-ready evidence requirement:

- Ensure this specify wrapper requires concrete Markdown evidence/checklist updates for every applicable checkpoint.
- If a checkpoint does not apply in the current Spec-Kit run, require `N/A` with a short rationale instead of omitting it.
- If a checkpoint is undecided, require `Open` with owner, follow-up, and re-evaluation trigger.
