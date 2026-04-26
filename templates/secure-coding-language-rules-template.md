# Secure Coding Language Rules

## Context

- Feature or component:
- Primary language(s):
- Frameworks involved:
- Reviewer:
- Date:

## How to Use

- Fill in only the language sections that apply to this change.
- For every applicable rule, record one of: `applied`, `not applicable
  (reason)`, or `deviation (justification + mitigation)`.
- This document is the language-specific companion to the security
  checklist. It is referenced from `tasks-template` for any change that
  touches input handling, authentication, authorisation, cryptography,
  file I/O, or network I/O.

## C / C89 (CERT C)

- Bounds checking on all buffer writes:
- No `gets()`:
- No unchecked `sprintf()`/`strcpy()`/`strcat()`:
- Integer overflow guards on size arithmetic:
- `malloc`/`free` ownership documented; no use-after-free or double-free:
- Format strings are constant, never user-controlled:

## C# / .NET (Microsoft Secure Coding Guidelines)

- Parameterised queries (no string-concatenated SQL):
- Output encoding for HTML/JS/URL contexts (anti-XSS):
- Anti-forgery tokens on state-changing endpoints:
- Secure deserialisation only (no `BinaryFormatter` on untrusted input):
- `HttpClient` reuse via `IHttpClientFactory`:
- Secrets via `IConfiguration` + secret store, never hard-coded:

## SQL

- Parameterised statements only; no dynamic SQL from untrusted input:
- Least-privilege database accounts (no application use of DBA roles):
- Stored procedures parameterised; no `EXEC(@sql)` on user input:
- Error messages do not leak schema or query text to end users:

## Bash

- All variables quoted (`"$var"`, `"${arr[@]}"`):
- No `eval` on untrusted input:
- `--` end-of-options sentinel before user-supplied paths:
- `set -euo pipefail` (or documented justification for omission):
- Temporary files via `mktemp`, never predictable names:

## PowerShell

- `Set-StrictMode -Version Latest`:
- Validated parameters (`[ValidateSet]`, `[ValidateRange]`,
  `[ValidatePattern]`):
- No `Invoke-Expression` on untrusted input:
- No `ConvertFrom-Json -AsHashtable` on attacker-controlled input without
  validation:
- Secrets via `SecretManagement` module or platform credential store:

## Cryptography

- Symmetric: AES-256 (GCM or CBC + HMAC):
- Asymmetric: RSA ≥ 3072 bit, or Ed25519/X25519:
- Hashing: SHA-256 or stronger; passwords via Argon2id, scrypt, or bcrypt:
- Random: cryptographically secure RNG only:
- Deprecated algorithms (MD5, SHA-1 for signatures, DES, 3DES, RC4) — only
  with explicit risk acknowledgement and documented compensating control:

## Error Handling and Logging

- No stack traces, internal state, or connection strings in user-facing
  errors:
- Sensitive data (secrets, tokens, PII) not logged:
- Log injection prevented (no unescaped user input in log lines):

## Follow-Up

- Open deviations:
- Required compensating controls:
- Re-review trigger (date, release, or scope change):
