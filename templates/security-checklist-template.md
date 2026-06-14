# Security Checklist

## Spec-Kit Run Evidence

- Feature / Spec ID:
- Spec-Kit phase: [specify / plan / tasks / implement / review / release]
- Branch / commit / PR:
- Run date:
- Evidence owner:
- Reviewer:
- Standards / criteria checked: ISO 27001/27002 secure development controls, NIST SSDF, CWE Top 25, OWASP ASVS, SBOM, AI-SBOM, VEX, SLSA, OpenSSF Scorecard, CRA, NIS2, EU AI Act, DORA
- Decision: [Applicable / N/A / Open]
- Evidence path:
- N/A rationale, if not applicable:
- Open follow-up owner and trigger:
- Re-evaluation trigger:
- Certification-readiness note: Use this record as internal certification-readiness evidence; it does not replace an external auditor, legal assessment, C5 report, or formal conformity assessment.

## Audit Evidence Matrix

| Checkpoint / control reference | Applicability | Evidence produced or linked | Result | Residual risk / rationale |
| --- | --- | --- | --- | --- |
| Spec-Kit run scope is identified | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| Standard-specific criteria are mapped | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| Evidence artefact path is recorded | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| N/A decisions are justified | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| Open findings have owner and trigger | [Applicable / N/A / Open] | | [OK / Open / N/A] | |

## Scope

- Feature:
- Owner:
- Review date:
- Primary language(s):
- Frameworks involved:

## Generic Code-Review Checks

- Input validation reviewed
- Output encoding reviewed
- Authentication and session handling reviewed
- Authorisation and access control reviewed
- Secrets handling reviewed (no hard-coded secrets)
- Cryptographic primitives reviewed (current algorithms only)
- Error handling reviewed (no internal state leakage)
- File and network I/O reviewed
- Logging and sensitive data reviewed (no secrets in logs)

## CWE Top 25 Mapping

For every security-relevant change, list the affected `CWE Top 25`
weaknesses and the chosen mitigation. Do not leave this implicit.

| CWE ID | Name | Affected? | Mitigation / Rationale |
|--------|------|-----------|------------------------|
| CWE-79 | XSS | | |
| CWE-89 | SQL Injection | | |
| CWE-20 | Improper Input Validation | | |
| CWE-78 | OS Command Injection | | |
| CWE-22 | Path Traversal | | |
| CWE-352 | CSRF | | |
| CWE-434 | Unrestricted File Upload | | |
| CWE-862 | Missing Authorisation | | |
| CWE-863 | Incorrect Authorisation | | |
| CWE-287 | Improper Authentication | | |
| CWE-798 | Hard-coded Credentials | | |
| CWE-918 | SSRF | | |
| CWE-502 | Deserialisation of Untrusted Data | | |
| CWE-77 | Command Injection | | |
| CWE-119 | Buffer Bounds | | |

(Add or remove rows to match the change. Reference the full `CWE Top 25`
list and add any non-listed weaknesses that apply.)

## Language-Specific Checks

For each applicable language, fill out the matching section in
`secure-coding-language-rules-template`. Record the location of the
completed rules document below. Memory-safe language status does not replace
this language-specific review; use the matching section to verify secure API
usage, input/output handling, authentication, database access, cryptography,
logging, and dependency handling.

- C / C89 rules location:
- C# / .NET rules location:
- Rust rules location:
- Go rules location:
- Swift rules location:
- Java / Kotlin rules location:
- Python rules location:
- TypeScript / JavaScript rules location:
- SQL rules location:
- Bash rules location:
- PowerShell rules location:
- Other (name and location):

## Cross-References

- Threat model entry/section:
- Dependency audit entry/section:
- ASVS verification entry (with Level):
- Supply-chain evidence entry:
- AI-SBOM applicability/evidence entry:
- CRA applicability entry:

## Follow-Up

- Open findings:
- Required mitigations and owners:
- Re-review trigger:
