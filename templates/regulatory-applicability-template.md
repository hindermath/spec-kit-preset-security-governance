# Regulatory Applicability

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

## Decision Summary

- Result: [Applicable / N/A / Open]
- Date:
- Feature / system:
- Owner:
- Evidence location:

## Project Context

- Project type: [private training / internal tool / OSS / product / service / other]
- Released or operated system: [Yes / No]
- Market or customer scope:
- Regulated entity or customer involved: [Yes / No / Open]
- Critical or important service dependency: [Yes / No / Open]

## Applicability Matrix

| Regulation | Decision | Rationale | Evidence path | Follow-up |
| --- | --- | --- | --- | --- |
| NIS2 / Directive (EU) 2022/2555 | [Applicable / N/A / Open] | | | |
| EU Cyber Resilience Act (CRA) | [Applicable / N/A / Open] | | | |
| EU AI Act | [Applicable / N/A / Open] | | | |
| DORA | [Applicable / N/A / Open] | | | |
| Sector-specific or customer rules | [Applicable / N/A / Open] | | | |

## NIS2 Screening

- Does the project operate or support an essential or important entity?
- Does the project provide a service used in a NIS2-relevant sector?
- Does a customer, supplier, or contract impose NIS2-derived controls?
- Required evidence if applicable:
  - cybersecurity risk-management measures:
  - incident reporting path:
  - supply-chain and supplier controls:
  - governance / accountability owner:
- N/A rationale:

## CRA Screening

- Is the software a product with digital elements placed on the EU market?
- Does the project already maintain a dedicated CRA applicability record?
- Dedicated evidence path:
- N/A rationale:

## EU AI Act Screening

- Are AI models, AI services, datasets, inference infrastructure, or AI runtime
  components part of the released or operated system?
- Is AI only used as development tooling?
- Related AI-SBOM / supply-chain evidence:
- N/A rationale:

## DORA Screening

- Is a financial entity, ICT third-party service provider, or financial-sector
  customer in scope?
- Does the project provide ICT services that affect financial operational
  resilience?
- Required evidence if applicable:
  - ICT risk management:
  - incident reporting:
  - third-party risk controls:
- N/A rationale:

## Default for Private Training Projects

For private training, learning, or reference projects, record `N/A` when the
project is not operated as a regulated service, not placed on the market as a
regulated product, not delivered to a regulated customer, and not part of a
regulated supply chain. Keep the rationale explicit; do not omit the check.

## Follow-Up Tasks

- [ ] Close open regulatory applicability questions.
- [ ] Link any applicable regulation to the detailed evidence document.
- [ ] Revisit this record before release, customer handover, public hosting, or material architecture change.
