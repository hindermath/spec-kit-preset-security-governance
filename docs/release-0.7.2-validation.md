# Patch 0.7.2: README-Paketierung / README packaging

Documentation Impact: `UpdateRequired`. Owner: Thorsten Hindermann.
Zielgruppen: Preset-Nutzende und Maintainer. Leserpfad: README → Einstieg,
Komposition und Nachweise → dieser Release-Nachweis. Kanonische Quellen:
`README.md`, `preset.yml` und die bestehenden Tests. Dokumentklasse:
zweisprachige Bedienungs- und Release-Dokumentation; DE zuerst, EN danach.
Distribution: Preset-Quellrepository und neues Tag-ZIP. Navigation bleibt
erhalten. Re-Evaluation bei Versions-, Installations- oder Vertragsaenderung.
Kein Home-Sync, keine Verbraucherinstallation und keine Community-Einreichung.

Dieser Patch paketiert die abgenommene README-Verbesserung aus main seit v0.7.1.
Zweck, Voraussetzungen, explizite Aktionen, Vorlagen, Evidence und Komposition
werden nachvollziehbarer beschrieben. Installation startet keine Produktlaeufe
und erteilt keine neue Ausfuehrungs-, Merge- oder Freigabeberechtigung.

Commands, Templates, Routing, Prioritaeten und fachliche Regeln bleiben unveraendert. / Commands, templates, routing, priorities and professional rules remain unchanged.

Pruefung: bestehende relevante Regressionen, Manifest-/Versionskonsistenz,
Markdown, Links/Anker, resolve-Namen und Shell-Beispiele. Nach Publikation
wird das echte Tag-ZIP mit SHA-256 und Commit gebunden und in temporaeren
Projekten installiert. Endgueltige Exitcodes, native CI-Links, gepruefter
Head, Merge und ZIP-Hash stehen im PR und in den Release-Notes; dieses
Dokument behauptet vor Abschluss keine bestandenen Gates.

This patch packages the accepted README improvements since v0.7.1.
Audience and reader path: users/maintainers → README onboarding, explicit
actions, composition and evidence → this release record. README and manifest
remain canonical. Existing navigation and paired German/English information
are maintained. Distribution is source plus the new tag archive; existing
tags, archives and historical evidence are preserved. Reevaluate on version,
installation or contract changes. This grants no product/risk/legal approval.

Relevant tests run locally on macOS first. Configured native CI must pass
before exact-head delivery; unavailable Linux/Windows checks are disclosed,
never inferred from macOS. Published archives are verified and installed only
in temporary projects. Final commands, exit codes, native CI links, tested
head, merge and archive SHA-256 are recorded in PR/release evidence.
Rollout, Home Runtime sync and community submission remain separate.
