# EU Cyber Resilience Act (CRA) Applicability

## Gemeinsamer Nachweis / Shared evidence

DE: Beispielprogramm, Entwicklungswerkzeuge und Organisation getrennt pruefen.
Unbekannte Rollen oder Rechtsfassungen bleiben Open; Ausbildung allein ist
keine allgemeine Ausnahme. Kontrollierte Evidence statt personenbezogener
Rohdaten oder Secrets referenzieren. Tests erteilen keine Rechtsfreigabe.
EN: Assess product, tooling and organisation separately. Unknown roles or legal
versions remain Open; education is not a blanket exemption. Reference controlled
evidence, not personal payloads or secrets. Tests do not grant legal approval.

- Feature / system / Spec-Kit phase:
- Branch / commit / PR:
- Scope: [sample product / development tooling / operating organisation]
- Country / jurisdiction:
- Role and responsible legal entity:
- Decision: [Applicable / N/A / Open]
- Direct legal duties:
- Contractual / customer-derived duties:
- Owner / reviewer:
- Reviewed at / review due:
- Official source / version / article / checked at / application date:
- Evidence path / residual risk:
- N/A rationale / reevaluation trigger:
- Open finding / next action / owner / due date:

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

- System or product:
- Released version(s) covered:
- Reviewer:
- Date:
- Regulation reference: Regulation (EU) 2024/2847

## Scope Decision

- Is the software a "product with digital elements" placed on the EU market?
  (Yes / No / N/A — with rationale)
- Does the software qualify under CRA Annex III (important products) or
  Annex IV (critical products)?
  (Annex III / Annex IV / Neither / N/A — with rationale)
- Conformity assessment approach:
  (self-assessment / third-party assessment / N/A — with rationale)

## Required Records (when CRA-scoped)

- SBOM availability per released version:
- Vulnerability disclosure and handling process documented:
- 24-hour reporting expectation for actively exploited vulnerabilities
  acknowledged and operationalised:
- Secure-by-design alignment recorded:
- Secure-by-default alignment recorded:
- Documentation provided to users about secure use:

## Out-of-Scope Justification

- If the answer to "product with digital elements" is "No", briefly explain
  why (e.g. internal-only tool, not placed on the EU market, free and
  open-source software outside CRA commercial-activity scope, hardware
  component not covered).
- Silent omission is not allowed — record an explicit `N/A` with rationale.

## Follow-Up

- Open compliance gaps:
- Required mitigations:
- Next CRA review date:

## Classes and reporting / Klassen und Meldung

DE: Normale Produkte, Anhang III Klasse I/II und Anhang IV unterscheiden.
Art. 32: Klasse I kann bei den gesetzlichen Voraussetzungen interne Kontrolle
nutzen; keine pauschale Drittpruefung aller wichtigen Produkte behaupten.
Hersteller, Einfuehrer, Haendler und OSS-Steward rollenbezogen pruefen.
EN: Distinguish normal, Annex III class I/II and Annex IV products. Article 32
allows internal control for class I under its conditions; do not equate every
important product with mandatory third-party assessment. Check manufacturer,
importer, distributor and OSS-steward duties by role.

| Event (Art. 14) | Early warning | Notification | Final report |
| --- | --- | --- | --- |
| Actively exploited vulnerability | within 24 hours of awareness, without undue delay | within 72 hours of awareness | within 14 days after corrective/mitigating measure is available |
| Severe security incident | within 24 hours of awareness, without undue delay | within 72 hours of awareness | within one month after incident notification |

- Awareness time / significance / role / authority / controlled evidence:
- Reporting owner and applicable exceptions:
- Art. 14 application: 11 September 2026; main obligations: 11 December 2027.
- Commercial supply / OSS non-commercial rationale / change trigger:
- Distinct GDPR, NIS2 and DORA reporting assessment:

Source: [CRA Articles 14, 24, 32, 71](https://eur-lex.europa.eu/eli/reg/2024/2847/oj).
