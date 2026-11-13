<h1 lang="de">Sicherheitsrichtlinie / <span lang="en">Security Policy</span></h1>

<div lang="de">

Bitte veröffentliche eine vermutete Schwachstelle nicht als öffentliches Issue. Nutze stattdessen die privaten [GitHub Security Advisories](https://github.com/hindermath/spec-kit-preset-security-governance/security/advisories/new). Nenne betroffene Versionen, eine nachvollziehbare Reproduktion, die mögliche Auswirkung und bekannte Gegenmaßnahmen. Sende keine Kennwörter, Zugangsdaten oder personenbezogenen Daten.

## Vertraulicher Meldeweg

Falls die private Meldefunktion nicht verfügbar ist, eröffne nur ein neutrales
Issue ohne technische Details. Bitte darin um einen vertraulichen Kontaktweg.
Veröffentliche keine Informationen, mit denen sich die vermutete Schwachstelle
ausnutzen lässt.

## Unterstützter Stand

Sicherheitsmeldungen werden für den aktuellen Stand des Default Branch
`main` geprüft. Ob eine Korrektur auch für veröffentlichte Versionen
bereitgestellt wird, entscheidet der Maintainer im Einzelfall. Für ältere
Versionen, historische Commits und andere Forks besteht keine allgemeine
Supportzusage.

## Sicherheitsbaseline

- Während einer Prüfung muss der geprüfte Worktree unverändert bleiben. Seine Dateien gelten weiterhin als nicht vertrauenswürdig; Pfade und Inhalte müssen vor ihrer Verwendung geprüft werden.

- Geheimnisse dürfen nicht in Git, Issues, Logs oder Prüfnachweisen gespeichert werden.
- Eingaben aus Dateien, Prozessen, Netzwerken und Geräten gelten als nicht vertrauenswürdig und müssen vor ihrer Verwendung geprüft werden.
- Preset-Installation und -Ausführung müssen Datei-, Prozess-, Konfigurations- und Workspace-Grenzen beachten. Nicht vertrauenswürdige Eingaben dürfen keine Pfadgrenzen umgehen, Befehle einschleusen oder ungeprüfte Schreib- und Veröffentlichungsrechte erhalten. Check-only und Vorschau dürfen keine operativen Änderungen auslösen.
- Datei- und Prozesszugriffe müssen die vorgesehenen Berechtigungs- und Verzeichnisgrenzen einhalten.
- Neue Abhängigkeiten benötigen eine Prüfung von Herkunft, Lizenz, Wartungsstand und bekannten Schwachstellen.
- Architektur- und Code-Reviews betrachten Eingaben, Berechtigungen, Fehlerausgaben sowie Datei- und Netzwerkzugriffe. Authentifizierung und Kryptografie werden geprüft, soweit das Projekt diese verwendet.
- Sicherheitsrelevante Entscheidungen und die Annahme verbleibender Risiken benötigen eine menschliche Freigabe.

## Prüfung und koordinierte Offenlegung

Der Maintainer prüft die Meldung auf Nachvollziehbarkeit, Erreichbarkeit und
mögliche Auswirkungen. Bei einem bestätigten Befund werden Korrektur, Tests
und Veröffentlichung mit der meldenden Person abgestimmt.

Bitte gib angemessene Zeit für die Untersuchung und Behebung. Veröffentliche
technische Einzelheiten möglichst erst nach dieser Abstimmung.



## Grenzen dieser Richtlinie

Diese Richtlinie beschreibt den Meldeweg und die Sicherheitsgrundsätze des
Projekts. Sie ist keine Sicherheitszertifizierung und garantiert keine
vollständige Befundfreiheit.

Automatische Prüfungen erfassen nur ihren jeweiligen Prüfumfang. Ein
erfolgreicher Lauf ersetzt keine vollständige Sicherheitsbewertung oder
menschliche Freigabe. Diese Richtlinie ist keine Rechtsberatung und keine
Zusage gesetzlicher Meldungen oder regulatorischer Konformität.

</div>

---

<div lang="en">

Please do not report a suspected vulnerability in a public issue. Instead, use private [GitHub Security Advisories](https://github.com/hindermath/spec-kit-preset-security-governance/security/advisories/new). Include the affected versions, reproducible steps, the possible impact, and any known mitigations. Do not send passwords, credentials, or personal data.

## Confidential reporting

If private reporting is unavailable, open only a neutral issue without
technical details. Ask for a confidential contact channel. Do not publish
information that could be used to exploit the suspected vulnerability.

## Supported version

Security reports are assessed against the current default branch, `main`.
The maintainer decides case by case whether a fix will also be provided for
released versions. There is no general support commitment for older versions,
historical commits, or other forks.

## Security baseline

- The worktree being checked must remain unchanged during a check. Its files remain untrusted; paths and content must be validated before use.

- Secrets must not be stored in Git, issues, logs, or verification records.
- Input from files, processes, networks, and devices is untrusted and must be checked before use.
- Preset installation and execution must respect file, process, configuration, and workspace boundaries. Untrusted input must not bypass path boundaries, inject commands, or gain unchecked write or publication permissions. Check-only and preview modes must not cause operational changes.
- File and process operations must respect the intended permission and directory boundaries.
- New dependencies require checks of their origin, licence, maintenance status, and known vulnerabilities.
- Architecture and code reviews cover input, permissions, error output, and file and network operations. Authentication and cryptography are reviewed where the project uses them.
- Security decisions and acceptance of remaining risks require human approval.

## Assessment and coordinated disclosure

The maintainer assesses whether the reported issue can be reproduced, how it
can be reached, and what impact it may have. For a confirmed finding, the fix,
tests, and disclosure are coordinated with the reporter.

Please allow reasonable time for investigation and remediation. Where
possible, publish technical details only after this coordination.



## Limits of this policy

This policy describes the project's reporting process and security principles.
It is not a security certification and does not guarantee the absence of
vulnerabilities.

Automated checks cover only their defined scope. A successful run does not
replace a complete security assessment or human approval. This policy is not
legal advice or a commitment to statutory reporting or regulatory compliance.

</div>
