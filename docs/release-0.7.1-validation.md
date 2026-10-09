# Patch 0.7.1: Installation / Installation

Documentation Impact: `UpdateRequired`. Owner: Thorsten Hindermann.
Zielgruppen: Preset-Nutzer und Katalog-Maintainer. Leserpfad: README,
Installationsabschnitt, dieser Nachweis. Kanonische Quellen: README und
preset.yml; Dokumentklasse: Release-/Bedienungsnachweis, DE zuerst/EN danach.
Distribution: Preset-Archiv. Kein Home-Sync oder Verbraucher-Rollout.
Wiedervorlage bei Aenderung des Installations- oder Katalogvertrags.

Dieser Patch bindet die einzeilige Installation an v0.7.1, aktualisiert
Versionsmetadaten und kuerzt die Katalogbeschreibung auf unter 200 Zeichen.
Der bestehende strukturelle Test ergaenzt LF/CRLF-Positivfaelle und Negativfaelle
fuer Zeilenfortsetzung, alte Version und falsche Prioritaet. Alle normativen
Vorlagen, Wrapper, regulatorischen Inhalte und Routing-Vertraege bleiben
unveraendert. Historische Tags, Archive und Evidence bleiben erhalten.

This patch updates installation documentation, release metadata, and the
existing regression test. The shorter catalog description retains the same
scope; all normative templates, wrappers, regulatory contents, and routing
contracts are unchanged. Historical tags, archives, and evidence are preserved.
Readers enter through README and its linked release record. Source and preset
archive are the distribution scope; no Home Runtime or consumer rollout is
included. Reevaluate when installation or catalog contracts change.

Local macOS regression and PSScriptAnalyzer precede exact-head native
macOS/Linux/Windows CI. Release notes record final commit, CI, archive hashes,
source inventory, and installation evidence. No legal reassessment, product
approval, certification, new risk acceptance, or downstream execution is implied.
