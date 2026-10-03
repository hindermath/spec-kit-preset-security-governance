# DS-GVO-Anwendbarkeit / GDPR applicability

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

## Datenschutzpruefung / Privacy assessment

| Pruefpunkt / Check | Nachweis / Evidence | Ergebnis / Result |
| --- | --- | --- |
| Verarbeitung, Zwecke, Datenkategorien, Betroffene / Processing, purposes, data categories, subjects | | Open |
| Verantwortlicher, Auftragsverarbeiter, gemeinsame Verantwortung / Controller, processor, joint control | | Open |
| Rechtsgrundlage Art. 6; besondere Kategorien Art. 9 / Legal basis; special categories | | Open |
| Datenminimierung, Zweckbindung, Speicherbegrenzung Art. 5 / Minimisation, purpose and storage limits | | Open |
| Information und Betroffenenrechte Art. 12-22 / Transparency and rights | | Open |
| Privacy by Design/Default Art. 25; Massnahmen Art. 32 / Design/defaults and security | | Open |
| Dienstleisterrollen und ggf. Vertrag Art. 28 / Provider roles and processing agreement where applicable | | Open |
| Empfaenger, Regionen, Drittlandtransfer Art. 44 ff. / Recipients, regions and transfers | | Open |
| Verarbeitungsverzeichnis Art. 30 und Ausnahmen / Processing records and exceptions | | Open |
| DSFA-Schwellwert Art. 35 und ggf. Konsultation Art. 36 / DPIA threshold and consultation | | Open |
| Datenschutzverletzungen Art. 33/34 / Personal-data breach handling | | Open |

DE: Entwicklungs-Prompts, Telemetrie, Logs und Testdaten mitpruefen.
Pseudonymisierte Daten sind nicht automatisch anonym. Eine volle DSFA nur
bei einschlaegiger Pflicht; strengere interne Schwellwertpruefung kennzeichnen.
Art. 33: ggf. Meldung binnen 72 Stunden ab Kenntnis an die Aufsicht; Art. 34
hat einen eigenen Risikotrigger und verlangt ggf. unverzuegliche Information
der Betroffenen. Das ist nicht die CRA- oder NIS2-Meldekette.
EN: Include development prompts, telemetry, logs and test data.
Pseudonymisation does not automatically remove personal-data status.
Require a full DPIA where the legal threshold applies; label stricter
internal screening. Article 33 authority reporting and Article 34 subject
notification have separate conditions; do not substitute CRA/NIS2 deadlines.

Source: [Regulation (EU) 2016/679](https://eur-lex.europa.eu/eli/reg/2016/679/oj).
Current-source assessment: [regulatory-evidence-contract](../docs/regulatory-evidence-contract.md).
