# v0.7.4: Paketvorbereitung / Package preparation

## Bedeutung / Meaning

Dieser zeitgebundene Vorbereitungsnachweis enthält keinen Veröffentlichungs-Pass.
candidate_status = Prepared; release_status = NotEstablishedAtPreparation.
Die tatsächliche [Release-Seite](https://github.com/hindermath/spec-kit-preset-security-governance/releases/tag/v0.7.4), der exakte Tag-Commit und ein extern ermittelter SHA-256-Wert belegen später die Veröffentlichung. Ein Paket kann seinen eigenen Archiv-Hash nicht enthalten.

<div lang="en">

This timestamped preparation record is not evidence of publication. Actual release metadata, the exact tag commit and an externally computed SHA-256 establish publication later. An archive cannot contain its own archive hash.

</div>

## Änderung und Grenze / Change and boundary

v0.7.4 paketiert die abgenommene Statuskorrektur und die DE-/EN-Verbesserungsprofile aus [https://github.com/hindermath/spec-kit-preset-security-governance/pull/11](https://github.com/hindermath/spec-kit-preset-security-governance/pull/11). Historische Kandidatentexte, Tags und ZIPs bleiben unverändert. Der [Basispaket-Nachweis](release-0.7.3-validation.md) gilt ausdrücklich für v0.7.3, nicht als neuer Veröffentlichungsnachweis für v0.7.4.

v0.7.4 packages the accepted status correction and bilingual improvement profiles. Historical candidate text, tags and archives remain unchanged. The linked base-package record applies to v0.7.3, not as proof of the new release.

Commands, Rollen, Prioritäten, Validatorlogik und Generator-/Receipt-Schemas bleiben unverändert. Paketversion und Generatorversion sind getrennt. Tests prüfen die neue Paketkennung, den historischen Veröffentlichungsnachweis und die bestehenden Negativfälle jeweils getrennt.

Commands, roles, priorities, runtime validators and generator/receipt schemas remain unchanged. Package and generator versions are separate. Tests independently check new package identity, historical publication and existing negative cases.

## Prüfgates / Verification gates

Vor Veröffentlichung: Dokumentations-, Paket- und native CI-Prüfungen am exakten Head. Danach Tag-Archiv herunterladen, Inhalt und SHA-256 prüfen und die Installation nur in Wegwerfprojekten testen. Level-0-/Home-Runtime-/Pilotlieferung bleibt ein nachfolgendes Gate. Kein Modellaufruf, Produktlauf, Flottenrollout oder Community-Auftrag wird daraus abgeleitet.

Before publication: documentation, package and native CI checks at the exact head. Afterwards download the actual tag archive, verify its contents/hash and test installation in disposable projects. Level-0, Home Runtime and pilot delivery follow separately. No model inference, product run, fleet rollout or community authority is implied.

Documentation Impact: UpdateRequired. Owner: Thorsten Hindermann. Zielgruppe / audience: alle vier IHK-IT-Berufe einschließlich aller Fachinformatik-Fachrichtungen und Entwickelnde ohne Spezialwissen / all four IHK IT occupations, all IT specialist disciplines and non-specialist developers. DE zuerst / German first; CEFR B2, anwendbare / applicable WCAG 2.2 AA. Distribution: preset package; no direct Home sync. Review again on source, version or evidence drift. Full accessibility acceptance is not inferred from static checks.

[Strukturierter Vorbereitungsstand / Structured preparation](release-0.7.4-preparation.json).
