# Nutzungsleitfaden: security-governance

<!-- current-package: 0.7.3 -->

[English](user-guide.EN.md) · [Preset-Referenz](../README.md)

Quellkandidat **v0.7.3**. Den tatsächlich veröffentlichten Stand auf der [Release-Seite](https://github.com/hindermath/spec-kit-preset-security-governance/releases) prüfen. Dieser Leitfaden erteilt keine Merge-, Release- oder Projektfreigabe.

Inhalt: [Start](#start) · [Beispiel](#example) · [Begriffe](#terms) · [Routing](#routing) · [Fehlerhilfe](#help) · [Referenzen](#references)

<a id="start"></a>

## Start und Zielgruppe

Sichere Entwicklung planen und begründen, ohne eine bestandene Sicherheitsprüfung vorzutäuschen.

Für Auszubildende aller vier IHK-IT-Berufe: Fachinformatiker*innen (Anwendungsentwicklung, Systemintegration, Daten- und Prozessanalyse, Digitale Vernetzung), IT-System-Elektroniker*innen, Kaufleute für Digitalisierungsmanagement und Kaufleute für IT-System-Management. Ebenso für Entwickelnde ohne Governance-Spezialwissen. Du musst zum Einstieg keine Hashes bearbeiten oder Modell-IDs erfinden. Technische Bindungen mit der Betreuung prüfen.

Nutze ein bereits mit Spec Kit initialisiertes Ziel-Repository. Lies zuerst Voraussetzungen und Installation in der Preset-Referenz; ersetze Beispielpfade. Eine Vorlage ist ein Starter, kein ausgefüllter Nachweis. Installation ergänzt Anweisungen und Dateien; sie startet kein Feature und erteilt keine Freigabe.

Eingabe: Beschreibe eine neue HTTP-API, ihre Daten und die geplante Veröffentlichung.

<a id="example"></a>

## Ein vollständiges Beispiel

1. Beschreibe den begrenzten Auftrag und vorhandene Dateien. Scope nicht still erweitern.
2. Nutze das folgende Beispiel im Agentenchat. Es ist ein Prompt, kein Shell-Befehl:

~~~text
Nutze standard-applicability-template und asvs-verification-template für meine HTTP-API. Plane docs/security/asvs-verification.md und konkrete Prüfaufgaben. Noch keine Scanner starten.
~~~

3. Anwendbarkeit und Prüf-Scope sind erklärt; offene Tests, Owner und Nachweispfade stehen in den Tasks. Leere Vorlagen zählen nicht als Prüfung.
4. Prüfe Ergebnis und dokumentierte nächste Aktion. Änderungen, Reparatur, Feature-Ausführung und Lieferung brauchen jeweils die passende Autorität. Ein grüner technischer Check ist keine menschliche Abnahme.

Lesende Installationsprüfung im initialisierten Ziel-Repository:

~~~text
specify preset info security-governance
specify preset resolve standard-applicability-template
~~~

Resolve zeigt die ausgewählte Vorlagenquelle; es füllt die Vorlage nicht aus und führt sie nicht aus.

<a id="terms"></a>

## Begriffe und Nachweise

- **ASVS:** OWASP-Prüfkatalog für Anwendungssicherheit; den passenden Umfang ausdrücklich wählen.
- **SBOM / VEX:** Komponentenliste / begründete Aussage, ob eine bekannte Schwachstelle das Produkt betrifft.
- **MSL:** Speichersichere Sprache; sie verhindert nicht automatisch alle Sicherheitsfehler.

Wo der bestehende Vertrag diese Werte verwendet: Applicable bedeutet anwendbar, nicht bestanden; N/A braucht einen Grund; Open braucht die dokumentierte nächste Aktion und zuständige Person. Diese Erklärung ergänzt keine Schema-Felder. Echte historische Evidence erhalten; Hash oder Freigabe niemals nur zum Bestehen einer Prüfung ändern.

<a id="routing"></a>

## Stabiles Routing und ausdrückliche Aktionen

| Command | Deklarierte Rolle |
|---|---|
| `speckit.specify` | `frontier-reasoning` |
| `speckit.plan` | `frontier-reasoning` |
| `speckit.tasks` | `frontier-reasoning` |

Rollen beschreiben Aufgaben, keinen Modellnamen und keine Qualitätsgarantie. Maßgeblich ist model-routing.json; allgemeine Beispiele wie coding-review ersetzen keine stärkere Command-Anforderung. Der bestehende autonome Runner verwendet die stärkste überlappende Rolle, unabhängig von der Installationspriorität. Die Installation eines Rollenvertrags stellt keinen laufenden Chat um und richtet keine persönlichen Profile ein.

Eine modellfreie Skriptprüfung und eine Agentenbewertung sind verschiedene Tätigkeiten. Modellaufrufe, auch Zugangs-Preflights, können trotz read-only-Verhalten Kontingent verbrauchen. Diese Dokumentation beauftragt keine Probe und keinen Anbieterwechsel. Sie enthält keine neue dynamische Routing-Implementierung.

Paketversion, Schema-Version und historischer Feldtest sind verschiedene Angaben. Eine frühere Abnahme gilt nur für ihren belegten Scope und Quellenstand.

<a id="help"></a>

## Fehlerhilfe und sichere nächste Aktion

Ein fehlender Scanner ist kein bestandener Test. Eine offene Rechtsfrage benötigt einen zuständigen Menschen; Ausbildungszweck ist keine pauschale Ausnahme.

Fehlt ein Command oder eine Vorlage, zuerst preset info und das unten verlinkte Manifest prüfen. Mindestwerkzeuge und aktive Installation prüfen. Unklarheit mit der Betreuung klären; weder Policy ändern, Validatoren abschalten noch einen nicht ausgeführten Test behaupten. Eine Schutzsperre bleibt eine Sperre.

Diese Sprach- und Zugänglichkeitsrunde zielt auf CEFR B2 und anwendbare WCAG 2.2 AA. Statische Tests bescheinigen das Ziel nicht. Nicht tatsächlich ausgeführte Screenreader-, Braille- und Nutzendentests bleiben ungeprüft.

<a id="references"></a>

## Vorlagen und Vertiefung

- [`msl-applicability-template`](../templates/msl-applicability-template.md)
- [`standard-applicability-template`](../templates/standard-applicability-template.md)
- [`security-checklist-template`](../templates/security-checklist-template.md)
- [`secure-coding-language-rules-template`](../templates/secure-coding-language-rules-template.md)
- [`dependency-audit-template`](../templates/dependency-audit-template.md)
- [`asvs-verification-template`](../templates/asvs-verification-template.md)
- [`supply-chain-evidence-template`](../templates/supply-chain-evidence-template.md)
- [`cra-applicability-template`](../templates/cra-applicability-template.md)
- [`regulatory-applicability-template`](../templates/regulatory-applicability-template.md)
- [`gdpr-applicability-template`](../templates/gdpr-applicability-template.md)
- [`ai-act-applicability-template`](../templates/ai-act-applicability-template.md)
- [`nis2-applicability-template`](../templates/nis2-applicability-template.md)
- [`dora-applicability-template`](../templates/dora-applicability-template.md)

Diese Namen bezeichnen verfügbare Starter; sie sind kein Auftrag, jede Datei anzulegen. Vorhandene passende Evidence weiterverwenden. JSON-Feldnamen bleiben technische Bezeichner, keine zu übersetzenden Schlüssel.

- [Manifest und Voraussetzungen](../preset.yml)
- [Stabiler Command-Rollenvertrag](../model-routing.json)
- [Dokumentationsumfang, Sichtung und Prüfgrenzen](documentation-closeout.md)
