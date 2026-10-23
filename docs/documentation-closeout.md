# Dokumentationsabschluss / Documentation closeout: v0.7.3

<!-- current-package: 0.7.3 -->

Documentation Impact: **UpdateRequired**. Owner: Thorsten Hindermann.

## Deutsch

Kanonische Quellen sind Manifest, stabile Routing-Datei, tatsächliche Command- und Template-Verträge. README und die Sprachpartner user-guide.md/user-guide.EN.md führen von Zweck und Voraussetzungen zu einem konkreten Beispiel, Ergebnis, Fehlerhilfe und Vertiefung. Die Berufs- und Vorwissensbeschreibung umfasst alle vier IHK-IT-Berufe, alle vier Fachinformatik-Fachrichtungen und Entwickelnde ohne Spezialwissen. Deutsch zuerst, gleichwertiges Englisch, CEFR B2 und anwendbare WCAG 2.2 AA bleiben Ziel und menschlicher Prüfmaßstab.

Umfang: Sichere Entwicklung planen und begründen, ohne eine bestandene Sicherheitsprüfung vorzutäuschen. Schwerpunkt dieses Presets: Ein fehlender Scanner ist kein bestandener Test. Eine offene Rechtsfrage benötigt einen zuständigen Menschen; Ausbildungszweck ist keine pauschale Ausnahme.

Registrierung, Starter, automatisch eingebundene Anweisungen und tatsächliche Ausführung werden getrennt erklärt. Paket-, Schema- und historische Nachweisversionen werden nicht gleichgesetzt. Alte Release-/Feldberichte werden nicht umgeschrieben. Dokumentation fügt keine neuen Pflichten, Gates, JSON-Felder, Rollen oder Befugnisse hinzu. Normative technische Referenzen behalten ihre Bezeichner; die zweisprachigen Leserpfade erklären ihre Verwendung.

Prüfungen: Tests für Manifest/Installationszeile, lokale Links, explizite Navigationsanker, Sprachpartner, aktuelle Versionsmarker, eigene Command-Abdeckung und Negativfälle. Die gemeinsame Kandidatentabelle unter tests/fixtures/documentation-targets.json ist ausschließlich Test-Evidence, keine operative Installationsmatrix. Die lokale Kohortenprüfung vergleicht alle 14 Quellen und 49 Command-Deklarationen. Native Dokumentations-CI prüft das jeweilige Paket unter macOS/Linux/Windows. Einschlägige vorhandene Regressionen bleiben unverändert streng; tatsächliche Ergebnisse stehen im PR, nicht als vorweggenommener Pass hier.

Rendernachweis: Alle 28 DE/EN-Leitfäden wurden offline mit Pandoc und lokalem Chrome geprüft: Sprachkennzeichnung, Überschriften, Linktexte, Anker, Tabellenüberschriften und Tastaturfokus. Bei 320 Pixeln wurde kein Dokumentüberlauf gefunden. Visuell gesichtet wurden der deutsche Routing-Einstieg bei 320 Pixeln und der englische Autonomous-Einstieg bei 1000 Pixeln. Das ist kein Nachweis der GitHub-Darstellung. Screenreader-, Braille-, umfassende Zoom/Reflow- und repräsentative Nutzendentests bleiben ungeprüft; keine vollständige AA- oder B2-Abnahme behaupten.

Distribution: Preset-Quelle und Dokumentation, kein Home Runtime Sync. Review-Gate: gesammelte fachliche Sichtung der exakten PR-Heads vor Lieferung. Keine automatische Freigabe durch Tests. Danach gesondert geprüfter Release-Schritt; kein Verbraucher-Rollout, keine operative Profil-/Installed-Lock-Änderung und keine Community-Einreichung. Re-Evaluation nach geändertem Head, Review, Quellen-/Versionsänderung oder Veröffentlichung. Ein tatsächlich veröffentlichtes ZIP benötigt externe Bindung von Tag-Commit und SHA-256 sowie Wegwerf-Installation.

## English

Canonical sources are the manifest, stable routing file and actual command/template contracts. README and the paired user guides lead from purpose and prerequisites to an example, expected result, troubleshooting and technical references. The audience includes all four IHK IT occupations, all four IT-specialist tracks and developers without specialist knowledge. German first, equivalent English, B2 and applicable WCAG 2.2 AA remain targets for human review.

Scope: Plan and explain secure development without claiming a passed security assessment. Package focus: A missing scanner is not a passing test. An open legal question needs a responsible human; educational use is not a blanket exemption.

Registration, starters, integrated instructions and actual execution are explained separately. Package/schema/historical evidence versions are distinct; historical releases/field reports are preserved. No new duties, gates, JSON fields, roles or authority. Technical identifiers remain unchanged and their use is explained through equivalent reader paths.

Tests cover manifest/install line, local links, explicit navigation anchors, language partners, current version markers, own command coverage and negative cases. The candidate cohort fixture is test evidence only, not an operational installation matrix. Local cohort validation checks all 14 sources and 49 command declarations. Native documentation CI checks each package on macOS/Linux/Windows. Existing regressions remain strict; actual results are recorded in the PR, not assumed here.

Rendered evidence: All 28 DE/EN guides were checked offline with Pandoc and local Chrome for language metadata, headings, link text, anchors, table headers and keyboard focus. No document overflow was found at 320 pixels. Visual spot checks covered the German routing introduction at 320 pixels and the English Autonomous introduction at 1000 pixels. This does not prove the GitHub rendering. Screen-reader, Braille, comprehensive zoom/reflow and representative-user tests remain unperformed; do not claim complete AA or B2 acceptance.

Distribution is preset source/documentation only, no Home Runtime sync. Collected exact-head human review precedes delivery. Tests grant no approval. Later publication requires actual archive/commit/SHA-256 verification and disposable installation. No consumer rollout, operational profile/installed-lock changes or community submission. Re-evaluate after head, review, source/version or publication changes.
