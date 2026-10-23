# ASVS Verification

## Spec-Kit Run Evidence

- Feature / Spec ID:
- Spec-Kit phase: [specify / plan / tasks / implement / review / release]
- Branch / commit / PR:
- Run date:
- Evidence owner:
- Reviewer:
- Standards / criteria checked: ISO 27001/27002 secure development controls, NIST SSDF, CWE Top 25, OWASP ASVS, SBOM, AI-SBOM, VEX, SLSA, OpenSSF Scorecard, GDPR, CRA, NIS2, EU AI Act, DORA
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

## Context

- System or feature:
- Reviewer:
- Date:
- ASVS version used:

## Verification Level (MUST be explicit)

Pick exactly one. Do not leave this unspecified.

- Level 1 — basic / opportunistic. Suitable for simple internal tools or
  low-risk public surfaces with no sensitive data.
- Level 2 — standard. Suitable for most authenticated, multi-user, or
  data-bearing applications. This is the default for typical web/API work.
- Level 3 — advanced. Required for high-assurance applications: regulated
  data, high-value financial flows, critical infrastructure.

Selected Level: __ (1 / 2 / 3)
Rationale for level choice:

## Verification Scope

- Authentication
- Session management
- Access control
- Input validation, sanitisation, and encoding
- Stored cryptography
- Error handling and logging
- Data protection
- Communication security (TLS configuration)
- Malicious code defence (deserialisation, dependency boundary)
- Business logic
- Files and resources
- API and web service
- Configuration

For each in-scope area: name the verifier (manual review, automated test,
external audit) and the location of the evidence.

## Results

- Passed (control IDs):
- Failed (control IDs + finding):
- Not applicable (control IDs + rationale — no silent omission):

## Follow-Up

- Required remediations and owners:
- Re-verification trigger (date, release, scope change):
- Cross-references (security checklist, threat model, supply-chain
  evidence):

## Nutzungshilfe / Reader help

DE: Sichere Entwicklung planen und begründen, ohne eine bestandene Sicherheitsprüfung vorzutäuschen. Diese Vorlage ist ein auszufüllender Starter, kein bestandener Nachweis. Vorhandene passende Evidence weiterverwenden.
Die bestehenden technischen Feldnamen und Statuswerte nicht übersetzen oder
nur zum Bestehen eines Tests verändern. Einführung, Begriffe, Beispiel,
Ergebnis und Fehlerhilfe stehen im [deutschen Leserpfad](https://github.com/hindermath/spec-kit-preset-security-governance/blob/main/docs/user-guide.md).

EN: Plan and explain secure development without claiming a passed security assessment. This template is a starter to complete, not passed evidence. Reuse suitable existing evidence.
Keep technical field names and states unchanged; never alter them just to pass.
See the [English reader path](https://github.com/hindermath/spec-kit-preset-security-governance/blob/main/docs/user-guide.EN.md)
for introduction, terms, example, result and troubleshooting.
