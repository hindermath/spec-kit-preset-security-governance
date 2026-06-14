# Standard Applicability Evidence

## Spec-Kit Run Evidence

- Feature / Spec ID:
- Spec-Kit phase: [specify / plan / tasks / implement / review / release]
- Branch / commit / PR:
- Run date:
- Evidence owner:
- Reviewer:
- Project / system:
- Evidence location:
- Certification-readiness note: Internal evidence record; formal certification, legal classification, or attestation remains external.

## Standards Applicability Matrix

| Standard / regulation | Applicability | Trigger / scope | Evidence required | Evidence path | Result | N/A rationale / open follow-up |
| --- | --- | --- | --- | --- | --- | --- |
| ISO 27001/27002 secure development controls | [Applicable / N/A / Open] | Secure architecture, secure coding, logging, supplier or release work | Control-mapped review evidence | | [OK / Open / N/A] | |
| NIST SSDF SP 800-218 | [Applicable / N/A / Open] | All Level-2 secure-development work | Practice/task mapping and implementation evidence | | [OK / Open / N/A] | |
| CWE Top 25 | [Applicable / N/A / Open] | All implementation/review work | Relevant CWE mapping and mitigation notes | | [OK / Open / N/A] | |
| OWASP ASVS | [Applicable / N/A / Open] | Web/API/auth-bearing services | ASVS level, requirement IDs, verification result | | [OK / Open / N/A] | |
| SBOM | [Applicable / N/A / Open] | Release-capable or distributable artefacts | Machine-readable SBOM and review note | | [OK / Open / N/A] | |
| AI-SBOM / G7-BSI minimum elements | [Applicable / N/A / Open] | AI runtime/product component, AI service, model, dataset, inference infrastructure | Seven-cluster AI-SBOM evidence or development-tool N/A rationale | | [OK / Open / N/A] | |
| VEX | [Applicable / N/A / Open] | Known vulnerability in shipped or evaluated component | Affected/not affected/mitigated/under investigation statement | | [OK / Open / N/A] | |
| SLSA | [Applicable / N/A / Open] | CI/CD-built or published artefact | Provenance, attestation, build integrity notes | | [OK / Open / N/A] | |
| OpenSSF Scorecard | [Applicable / N/A / Open] | Public OSS or high-impact external dependency | Scorecard output and reviewed findings | | [OK / Open / N/A] | |
| CRA | [Applicable / N/A / Open] | EU-market product with digital elements, vulnerability handling, conformity scope | Applicability decision, technical documentation, SBOM/vulnerability evidence | | [OK / Open / N/A] | |
| NIS2 | [Applicable / N/A / Open] | Essential/important entity, regulated customer/supply chain, sector obligation | Risk-management, incident, supply-chain and governance evidence | | [OK / Open / N/A] | |
| EU AI Act | [Applicable / N/A / Open] | AI runtime/product component or regulated AI system | AI classification, documentation/logging, AI-SBOM cross-reference | | [OK / Open / N/A] | |
| DORA | [Applicable / N/A / Open] | Financial entity, ICT third-party service, financial-sector dependency | ICT risk, incident, third-party and audit evidence | | [OK / Open / N/A] | |
| BSI C3A / C5 cross-reference | [Applicable / N/A / Open] | Cloud service selection, operation, provider dependency, assurance review | Link architecture-governance C3A/C5 records | | [OK / Open / N/A] | |

## Decision Rules

- `Applicable` requires evidence or a task that produces evidence before release or handover.
- `N/A` requires a short rationale and a re-evaluation trigger.
- `Open` requires an owner, a follow-up, and a trigger/date.
- Do not silently omit standards from this matrix when they were considered during the Spec-Kit run.

## Cross-References

- `spec.md`:
- `plan.md`:
- `tasks.md`:
- Security checklist:
- Dependency audit:
- Supply-chain evidence:
- Regulatory applicability:
- Architecture C3A/C5 record:
