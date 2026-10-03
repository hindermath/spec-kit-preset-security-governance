# DORA-Anwendbarkeit / DORA applicability

## Gemeinsamer Nachweis / Shared evidence

DE: Vorlage ausfuellen, nicht als fertigen Nachweis behandeln. Beispielprogramm,
Entwicklungswerkzeuge und nutzende Organisation getrennt pruefen. Ausbildung
oder nichtkommerzielle Nutzung begruenden keine allgemeine Ausnahme.
EN: Fill this starter record; it is not completed evidence. Assess the sample
product, development tools and operating organisation separately. Education
or non-commercial use is not a blanket exemption.

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

DE: Unbekannte Rolle, Rechtsfassung oder Evidence bleibt Open. Gesetzliche
Pflichten von strengeren internen Regeln trennen. Rechtsfragen eskalieren;
technische Tests erteilen keine Rechts-, Produkt- oder Zertifizierungsfreigabe.
Keine personenbezogenen Rohdaten, Secrets oder kompletten Vorfallsberichte
oeffentlich ablegen; kontrollierte Nachweise referenzieren.
EN: Unknown roles, legal versions or evidence remain Open. Distinguish law
from stricter internal policy. Escalate legal uncertainty; technical tests
grant no legal, product or certification approval. Reference controlled
evidence rather than publishing personal data, secrets or incident payloads.

## Rollen und Abgrenzung / Roles and boundary

- Financial entity category / Article 2 / exclusions or simplified regime:
- ICT third-party service provider role:
- Critical provider designation under Article 31: authority, decision, date, evidence:
- Ordinary provider versus designated critical provider:
- Supported critical or important functions / service and contract:
- Direct legal duties versus contractual customer requirements:
- NIS2 overlap (DORA Art. 1(2), NIS2 Art. 4): exact entity and equivalent duties:
- Applicable delegated/implementing acts and competent authority:

## Evidence nach Rolle / Role-specific evidence

| Thema / Topic | Applicable / N/A / Open | Evidence / owner / next action |
| --- | --- | --- |
| ICT risk management and governance | Open | |
| Continuity, response and tested recovery | Open | |
| Incident classification and reporting | Open | |
| Digital operational resilience testing; TLPT only where required | Open | |
| Third-party contracts and subcontracting | Open | |
| Information register and reporting responsibility | Open | |
| Concentration risk / alternatives / exit strategy | Open | |
| Designated-critical-provider oversight | Open | |

DE: Finanzkundenkontakt allein belegt weder eine Einstufung als kritisch noch
alle Pflichten eines Finanzunternehmens. Vertragsanforderungen explizit
abbilden. Der DORA/NIS2-Vorrang betrifft einschlaegige gleichwertige Pflichten,
nicht pauschal jedes System und jeden Dienstleister.
EN: A financial customer alone proves neither critical designation nor all
financial-entity obligations. Record contractual requirements explicitly.
DORA/NIS2 precedence is obligation- and entity-specific, not a universal waiver.

## Meldeweg / Reporting path

- Major ICT-related incident criteria / classification time / awareness time:
- Initial notification, intermediate and final report: exact trigger, deadline, authority:
- Delegated Regulation (EU) 2025/301 timing; permitted exceptions:
- Classification criteria: Delegated Regulation (EU) 2024/1772:
- Reporting formats: Implementing Regulation (EU) 2025/302:
- Information-register format: Implementing Regulation (EU) 2024/2956:
- Internal owner / customer notification / controlled evidence:
- Separate GDPR / CRA / NIS2 reporting assessment:

| Stage for financial entities (2025/301 Art. 5) | Default trigger / limit |
| --- | --- |
| Initial | as early as possible; within four hours of major classification and at most 24 hours from awareness |
| Late major classification | if classified after 24 hours from awareness, within four hours of classification |
| Intermediate | within 72 hours of initial notification; update when regular activities recover |
| Final | within one month of intermediate or latest updated intermediate report |

DE: Verzugsinformation und Wochenend-/Feiertagsregeln samt Ausnahmen nach
Art. 5(3)-(6) gesondert pruefen; nicht pauschal auf alle Rollen anwenden.
EN: Check delay notices and weekend/holiday provisions and exclusions in
Article 5(3)-(6) separately; do not assign every deadline to all provider roles.

DE: Keine CRA-/NIS2-Fristen fuer DORA kopieren; der Klassifizierungszeitpunkt
und die konkreten technischen Standards sind Teil des Nachweises. Dieses
Preset erstellt kein vollstaendiges regulatorisches Informationsregister.
EN: Do not copy CRA/NIS2 deadlines into DORA; classification time and the
applicable technical standards are part of the evidence. This preset does
not generate a full regulatory information register.

Sources: [DORA](https://eur-lex.europa.eu/eli/reg/2022/2554/oj),
[2025/301](https://eur-lex.europa.eu/eli/reg_del/2025/301/oj),
[2024/1772](https://eur-lex.europa.eu/eli/reg_del/2024/1772/oj),
[2025/302](https://eur-lex.europa.eu/eli/reg_impl/2025/302/oj),
[2024/2956](https://eur-lex.europa.eu/eli/reg_impl/2024/2956/oj).
See [regulatory-evidence-contract](../docs/regulatory-evidence-contract.md).
