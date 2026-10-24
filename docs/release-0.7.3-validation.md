# v0.7.3: Dokumentation / Documentation

## Veröffentlichungsabschluss / Publication closeout

| Feld / Field | Wert / Value | Bedeutung / Meaning |
|---|---|---|
| `candidate_status` | `HistoricalCandidate` | Ursprünglicher Vorbereitungsstand / original preparation state |
| `release_status` | `Published` | Reguläres Release, geprüft zum angegebenen Zeitpunkt / regular release checked as of the timestamp |

Tag: [v0.7.3](https://github.com/hindermath/spec-kit-preset-security-governance/tree/v0.7.3). Release-Commit / release commit:
`c66cabfbfdde532994bd3c0e63ebf843dadfa1c0`. [GitHub Release](https://github.com/hindermath/spec-kit-preset-security-governance/releases/tag/v0.7.3), veröffentlicht / published:
`2026-10-23T21:29:30.0000000+00:00`. Nachgeprüft / rechecked: `2026-10-24T10:55:18.6432180+00:00`.

[Unverändertes Tag-Archiv / unchanged tag archive](https://github.com/hindermath/spec-kit-preset-security-governance/archive/refs/tags/v0.7.3.zip)
mit SHA-256 / with SHA-256: `e43fdbc3af2334182ded8908f160313dc085882faf96532f29bfffbb7cfd8f9d`.
[Maschinenlesbarer Status und Quellen / machine-readable status and sources](release-0.7.3-publication.json).

Das Paket ist veröffentlicht. Der folgende historische Vorbereitungstext
behält seinen damaligen Prüfbereich; seine Statuswörter gelten nicht als
aktueller Veröffentlichungsstand. Dieser spätere Dokumentationsnachlauf auf
main ändert weder Tag noch ZIP. Er ersetzt keine technische, fachliche oder
menschliche Freigabe und behauptet keine Consumer-Installation oder Katalogaufnahme.

<div lang="en">

The package is published. The historical preparation text below retains its
original assessment scope; its status words do not describe current publication.
This later documentation follow-up on main changes neither tag nor ZIP.
It replaces no technical, professional or human approval and claims no consumer
installation or catalogue acceptance.

</div>

Bezug / Tracking: [#342: Veröffentlichungsstatus](https://github.com/hindermath/home-baseline/issues/342)
und / and [#343: Verbesserungsprofile](https://github.com/hindermath/home-baseline/issues/343).

## Historischer Validierungsstand / Historical validation state

Unveränderter ursprünglicher Text / unchanged original text:

<!-- historical-candidate:start -->

Quellkandidat zur gesammelten Sichtung, nicht durch diesen Text veröffentlicht.
*Source candidate for collected review; this text does not publish a release.*

[Dokumentationsumfang und Prüfgrenzen / Scope and test limits](documentation-closeout.md)

Bestehende Tags und historische Nachweise bleiben unverändert. Technische und fachliche Freigaben sind getrennt.
*Existing tags and historical evidence stay unchanged. Technical and human acceptance are separate.*
<!-- historical-candidate:end -->

## Verbesserungsprofil / Improvement profile

Vergleich / comparison: [v0.6.2 → v0.7.3](https://github.com/hindermath/spec-kit-preset-security-governance/compare/1b5e9e309d86b09aa74f036f3d7ed5829f34257b...c66cabfbfdde532994bd3c0e63ebf843dadfa1c0).

Ausgang / from: 1b5e9e309d86b09aa74f036f3d7ed5829f34257b. Ziel / to: c66cabfbfdde532994bd3c0e63ebf843dadfa1c0.

### v0.7.0: Fachlicher Vertrag / Professional contract

DE: **Vorher:** Regulatorische Fragen brauchten getrennte Anwendbarkeits- und Zuständigkeitsnachweise. **Änderung:** DS-GVO, KI-VO, CRA, NIS2 und DORA werden nach Produkt, Entwicklungswerkzeug und Organisation getrennt eingeordnet; offene Fragen bleiben sichtbar. **Nutzen:** Lernende können begründen, was gilt und wer entscheiden muss; Ausbildung ist keine pauschale Ausnahme.

<div lang="en">

EN: **Before:** Regulatory questions needed separate applicability and ownership evidence. **Change:** GDPR, AI Act, CRA, NIS2 and DORA are assessed separately for product, development tooling and organisation; open questions stay visible. **Benefit:** Learners can explain applicability and who must decide; education is not a blanket exemption.

</div>

Quellen / sources: [templates/regulatory-applicability-template.md](https://github.com/hindermath/spec-kit-preset-security-governance/blob/ad0b642db325db6803b33ecd99bc7935b43d2d59/templates/regulatory-applicability-template.md), [tests/test-regulatory-contract.ps1](https://github.com/hindermath/spec-kit-preset-security-governance/blob/ad0b642db325db6803b33ecd99bc7935b43d2d59/tests/test-regulatory-contract.ps1).

### v0.7.1: Kompatibilität / Compatibility

DE: **Vorher:** Der Installationsbefehl war nicht direkt als eine Zeile auswertbar. **Änderung:** Installationszeile und passende Dokumentationsprüfung wurden abgestimmt; 0.7.2 präzisierte den Einstieg weiter. **Nutzen:** Ein kopierbarer Einstieg vermeidet Formatierungsfehler, ohne Sicherheitsergebnisse vorwegzunehmen.

<div lang="en">

EN: **Before:** The installation command was not directly usable on one line. **Change:** The install line and its documentation test were aligned; 0.7.2 further clarified the entry point. **Benefit:** A copyable entry point avoids formatting errors without claiming security acceptance.

</div>

Quellen / sources: [README.md](https://github.com/hindermath/spec-kit-preset-security-governance/blob/7204bccbdf3565d4dd22424c7fa7a15c6a6e0eb3/README.md), [tests/test-regulatory-contract.ps1](https://github.com/hindermath/spec-kit-preset-security-governance/blob/7204bccbdf3565d4dd22424c7fa7a15c6a6e0eb3/tests/test-regulatory-contract.ps1).

### v0.7.3: Bedienbarkeit und Dokumentation / Usability and documentation

DE: **Vorher:** Ein kurzer README-Einstieg erklärte die vollständigen Leserpfade und Grenzen noch nicht gleichwertig. **Änderung:** Deutsch-/Englisch-Leitfäden, Command-/Vorlagen-Erklärungen und Dokumentationsregressionen wurden ergänzt. Frühere Einstiegsverbesserungen und der letzte Patch werden getrennt ausgewiesen. **Nutzen:** Lernende finden Voraussetzungen, Beispiel, Ergebnis und Fehlerhilfe. Neue Textklarheit ist keine neue Runtime-Funktion oder menschliche Abnahme.

<div lang="en">

EN: **Before:** The short README entry did not yet explain the complete reader journey and limits equally. **Change:** German/English guides, command/template explanations and documentation regressions were added. Earlier entry-point improvements and the final patch are reported separately. **Benefit:** Learners can find prerequisites, an example, its result and troubleshooting. Clearer text is not a new runtime feature or human acceptance.

</div>

Quellen / sources: [docs/user-guide.md](https://github.com/hindermath/spec-kit-preset-security-governance/blob/c66cabfbfdde532994bd3c0e63ebf843dadfa1c0/docs/user-guide.md), [docs/user-guide.EN.md](https://github.com/hindermath/spec-kit-preset-security-governance/blob/c66cabfbfdde532994bd3c0e63ebf843dadfa1c0/docs/user-guide.EN.md), [tests/test-documentation-closeout.ps1](https://github.com/hindermath/spec-kit-preset-security-governance/blob/c66cabfbfdde532994bd3c0e63ebf843dadfa1c0/tests/test-documentation-closeout.ps1).

### Zwischenstände / Intermediate versions

| Tag | Commit | Änderungsspanne / Change range |
|---|---|---|
| [v0.7.0](https://github.com/hindermath/spec-kit-preset-security-governance/tree/v0.7.0) | ad0b642db325db6803b33ecd99bc7935b43d2d59 | [v0.6.2 → v0.7.0](https://github.com/hindermath/spec-kit-preset-security-governance/compare/v0.6.2...v0.7.0) |
| [v0.7.1](https://github.com/hindermath/spec-kit-preset-security-governance/tree/v0.7.1) | 7204bccbdf3565d4dd22424c7fa7a15c6a6e0eb3 | [v0.7.0 → v0.7.1](https://github.com/hindermath/spec-kit-preset-security-governance/compare/v0.7.0...v0.7.1) |
| [v0.7.2](https://github.com/hindermath/spec-kit-preset-security-governance/tree/v0.7.2) | 21df666b0742d164a7f090ff5f5e3c136fef721d | [v0.7.1 → v0.7.2](https://github.com/hindermath/spec-kit-preset-security-governance/compare/v0.7.1...v0.7.2) |
| [v0.7.3](https://github.com/hindermath/spec-kit-preset-security-governance/tree/v0.7.3) | c66cabfbfdde532994bd3c0e63ebf843dadfa1c0 | [v0.7.2 → v0.7.3](https://github.com/hindermath/spec-kit-preset-security-governance/compare/v0.7.2...v0.7.3) |

Zugehörige PRs / related PRs: [#5](https://github.com/hindermath/spec-kit-preset-security-governance/pull/5), [#7](https://github.com/hindermath/spec-kit-preset-security-governance/pull/7), [#6](https://github.com/hindermath/spec-kit-preset-security-governance/pull/6), [#9](https://github.com/hindermath/spec-kit-preset-security-governance/pull/9), [#8](https://github.com/hindermath/spec-kit-preset-security-governance/pull/8), [#10](https://github.com/hindermath/spec-kit-preset-security-governance/pull/10).

### Nachweise und Grenzen / Evidence and limits

Der Quellcode der verlinkten Tests belegt ihre Implementierung, nicht ihre Ausführung. Für den früheren exakten PR-Head 9f1f0a2324204ff703409c24929dd2a0257acb3c sind 0 erfolgreiche Check-Runs erneut lesend nachgewiesen. Details und native Runner-Namen stehen im JSON-Nachweis; [damaliger PR](https://github.com/hindermath/spec-kit-preset-security-governance/pull/10). Das ist historische Evidence, kein Pass des neuen Dokumentations-Heads.

<div lang="en">

Linked test code proves implementation, not execution. 0 successful check runs were rechecked for the earlier exact PR head; see the JSON for native runner names and links. These are historical results, not passes for the new documentation head.

</div>

Historische Feldtests behalten ihre eigene Version. Ein besserer Leserpfad ist keine neue Runtime-Funktion. Die Fachverträge, Rollen, Prioritäten und menschlichen Entscheidungsrechte bleiben in diesem Nachlauf unverändert. Keine neue Routing-Entwicklung, Modellprobe, Produkt-, Risiko-, Konformitäts-, WCAG- oder Zertifizierungsfreigabe.

<div lang="en">

Historical field tests retain their own version. A clearer reader path is not a new runtime feature. This follow-up changes no professional contracts, roles, priorities or human decision rights. It grants no new routing development, model probe, product, risk, compliance, WCAG or certification acceptance.

</div>

### Dokumentationsauswirkung / Documentation impact

UpdateRequired. Owner: Thorsten Hindermann. Quelle / source: unveränderliche Tags, echte Release-/Archivnachweise und verlinkte Testläufe / immutable tags, actual release/archive evidence and linked check runs. Leserpfad / reader path: README → DE/EN-Leitfaden → dieser Nachweis → Quellen und nächste sichere Aktion / this record → sources and next safe action. Zielgruppe / audience: alle vier IHK-IT-Berufe, alle vier Fachinformatik-Fachrichtungen und Entwickelnde ohne Spezialwissen / all four IT occupations and IT specialist disciplines, plus non-specialist developers. Deutsch zuerst, gleichwertiges Englisch, CEFR B2 und anwendbare WCAG 2.2 AA sind Prüfziele, keine automatische Abnahme / German first, equivalent English, B2 and applicable WCAG 2.2 AA are review targets, not automatic acceptance. Distribution: source-only; kein Home-Sync / no Home sync. Re-Evaluation: Tag-, Release-, Evidence-, Quellen- oder Scope-Drift / tag, release, evidence, source or scope drift.

Neue lokale Prüfungen und native CI werden im neuen PR am tatsächlichen Head nachgewiesen. Nächste Aktion: gesammelte menschliche Sichtung; vorher kein Merge. / New local checks and native CI are recorded in the new PR at its actual head. Next action: collected human review; no merge beforehand.
