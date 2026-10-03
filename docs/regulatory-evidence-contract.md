# Regulatorischer Evidence-Vertrag / Regulatory evidence contract

Stand / Checked at: 2026-10-03. Owner: Thorsten Hindermann.
Documentation Impact: UpdateRequired. Release candidate: v0.7.0.

## Verantwortlichkeiten / Responsibilities

DE: Security ist die kanonische Quelle fuer regulatorische Anwendbarkeit.
Architecture referenziert die Entscheidung fuer Schutz, Datenfluesse und
Resilienz. Assurance prueft gebundene Integritaet, nicht die rechtliche
Vollstaendigkeit. Intake uebernimmt projektspezifische Anforderungen.
Alle Presets bleiben ohne Home Baseline und ohne bestimmtes Hostingkonto
nutzbar. Leserpfad: README -> Anwendbarkeitsmatrix -> Detailvorlage ->
kontrollierte Projektnachweise. Owner und Rechtsreview sind projektspezifisch.
EN: Security owns applicability; Architecture links technical implications;
Assurance checks bound integrity, not legal completeness; Intake adopts local
requirements. No Home Baseline or hosting account is required. Reader path:
README -> index -> detail record -> controlled project evidence. Project
owners and qualified legal/privacy reviewers decide actual applicability.

## Quellen und Rechtsstand / Sources and legal status

| Topic | Official source | Article / assessment boundary |
| --- | --- | --- |
| GDPR | [2016/679](https://eur-lex.europa.eu/eli/reg/2016/679/oj) and [Commission guidance](https://commission.europa.eu/law/law-topic/data-protection/information-business-and-organisations/application-gdpr_en) | Art. 2-6, 9, 12-36, 44 ff.; internal screening is not an automatic full DPIA duty |
| AI Act | [2024/1689](https://eur-lex.europa.eu/eli/reg/2024/1689/oj), [scope](https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-2), [literacy](https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-4) | Role, intended purpose, exemptions, Art. 4/5/6/50 and transitional rules |
| CRA | [2024/2847](https://eur-lex.europa.eu/eli/reg/2024/2847/oj) | Art. 14 reporting from 2026-09-11; main obligations from 2027-12-11; Art. 24 stewards; Art. 32 routes |
| NIS2 | [2022/2555](https://eur-lex.europa.eu/eli/dir/2022/2555/oj), [2024/2690](https://eur-lex.europa.eu/eli/reg_impl/2024/2690/oj) | Art. 2-4, 20-23; country, scope and specific service matter |
| Germany example | [BSIG 2025](https://www.gesetze-im-internet.de/bsig_2025/), [BSI guidance](https://mip2.bsi.bund.de/de/info-nis2-registrierung/) | §§ 28/30/32/33/38; BSI identifies 2025-12-06 entry; verify entity-specific channels |
| DORA | [2022/2554](https://eur-lex.europa.eu/eli/reg/2022/2554/oj) | Art. 1/2, 5-16, 17-23, 24-27, 28-31; applies from 2025-01-17 |
| DORA criteria/timing | [2024/1772](https://eur-lex.europa.eu/eli/reg_del/2024/1772/oj), [2025/301](https://eur-lex.europa.eu/eli/reg_del/2025/301/oj) | Classification, awareness and notification are distinct triggers |
| DORA formats/register | [2025/302](https://eur-lex.europa.eu/eli/reg_impl/2025/302/oj), [2024/2956](https://eur-lex.europa.eu/eli/reg_impl/2024/2956/oj) | Reference actual reporting/register evidence; do not generate full regulatory forms here |

DE: Rechtsakte sind von Erklaerungen der Behoerden zu unterscheiden.
Die aktuellen Kommissionsseiten berichten KI-VO-Aenderungen 2026; der
automatisierte Abruf des konsolidierten EUR-Lex-Texts fuer KI-VO/DS-GVO und
teilweise NIS2 war durch die JavaScript-Pruefung eingeschraenkt.
Daher wird hier keine vollstaendig verifizierte KI-VO-Fristentabelle oder
Vollstaendigkeit aller aktuellen Aenderungen behauptet. Vor der Projektentscheidung
muss die zustaendige Rolle die geltende Fassung samt Aenderungsakt verifizieren.
Die Vorlage bleibt bei ungeklaertem Rechtsstand Open.
EN: Distinguish law from explanatory guidance. Commission pages describe
2026 AI Act amendments, but automated consolidated EUR-Lex access was limited
by its JavaScript verification for some acts. This is not a verified complete
AI Act schedule or exhaustive amendment review. The responsible role must
confirm the applicable consolidated text and amendment act before a project
decision. Uncertain legal currency remains Open.

## Kompatibilitaet und Grenzen / Compatibility and boundaries

DE: Vier neue Template-IDs sind additiv. Bestehende Commands, Prioritaet 10,
Spec-Kit-Mindestversion, Modell-Routing und Schema bleiben erhalten.
Historische Nachweise werden nicht umgeschrieben. N/A braucht einen konkreten
Scope und Trigger; Open braucht Owner und Aktion. Es entsteht kein neuer
produktiver Validator, kein Rechtsentscheid und keine automatische Meldung.
EN: Four template IDs are additive. Existing commands, priority, minimum
Spec Kit version, routing and schema remain unchanged. Preserve history.
Scoped N/A and owned Open decisions are mandatory. There is no new runtime
validator, legal decision engine or automated incident notification.

## Tests und fachliche Sichtung / Tests and professional review

DE: PowerShell-Vertragstests pruefen Template-Registration, Quellenfelder,
Wrapper, Grenzen und synthetische positive/negative Beispiele. Sie laufen
offline und veraendern keine Repo-Dateien. Mac/Linux/Windows-CI ist separate
Plattformevidence. Textpruefungen beweisen keine Rechtskonformitaet.
README, alle Addenda und Rollenabgrenzung benoetigen fachliche Sichtung vor
Merge und stabiler Veroeffentlichung.
EN: Offline PowerShell tests check registration, fields, wrappers, boundaries
and synthetic examples without modifying the checkout. Native CI is separate
platform evidence; text assertions cannot prove legal compliance. Semantic
review precedes merge and stable publication.

Distribution: sourceOnly preset package; no Home sync for this standalone repo.
Audience: maintainers, project owners, learners and privacy/compliance reviewers.
Language partner: inline German first / English second.
Reevaluation: legal amendment, jurisdiction/role/data/AI/service change or release.
