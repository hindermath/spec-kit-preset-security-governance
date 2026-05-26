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
- Memory-safe language status does not replace this review. For MSL
  languages, use the matching section below to check API usage, framework
  defaults, I/O, authentication, SQL/NoSQL access, cryptography, logging, and
  dependency handling.

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
- Authorisation attributes/policies checked on controllers, handlers, and
  service methods:
- Model validation and server-side input validation applied:
- Secure deserialisation only (no `BinaryFormatter` on untrusted input):
- `HttpClient` reuse via `IHttpClientFactory`:
- `HttpClient` calls have explicit timeouts and SSRF-relevant URL validation:
- File paths normalised and constrained to approved directories:
- Secrets via `IConfiguration` + secret store, never hard-coded:

## Rust

- `unsafe` absent, or isolated with a documented safety invariant:
- No `unwrap()`, `expect()`, or panic path reachable from untrusted input:
- Integer and slice indexing use checked operations where input controls
  bounds or sizes:
- `serde` deserialisation followed by explicit domain validation:
- Secrets use dedicated secret-handling types or zeroisation where feasible:
- SQL/NoSQL access is parameterised; no string-built queries from input:
- File paths are canonicalised and constrained before filesystem access:
- Cryptography uses reviewed crates and `rand_core`/OS CSPRNG sources:
- Dependency review includes `cargo audit` or equivalent advisory scanning:

## Go

- All request, network, and database operations accept and honour `context`:
- HTTP servers set read, write, idle, and header timeouts:
- HTTP clients use explicit timeouts and validate outbound URLs against SSRF:
- SQL/NoSQL access is parameterised; no string-built queries from input:
- Errors returned to users do not expose internal details; logs keep detail
  server-side only:
- `crypto/rand` used for secrets, tokens, and nonces:
- File paths are cleaned, resolved, and constrained before filesystem access:
- Goroutines and channels have cancellation/cleanup paths; no unbounded fanout:
- Dependencies reviewed with `govulncheck` or equivalent:

## Swift

- Optional handling avoids force unwraps (`!`) on data from untrusted input:
- Input decoded via `Codable` is followed by explicit domain validation:
- Secrets stored in Keychain or platform secret storage, never in source:
- `URLSession` uses TLS defaults; certificate validation is not disabled:
- SQL/ORM access is parameterised; no string-built queries from input:
- File URLs and paths are standardised and constrained before access:
- Concurrency boundaries (`async`/actors/queues) avoid shared mutable state:
- Cryptography uses CryptoKit or reviewed platform APIs:

## Java / Kotlin

- Bean Validation or equivalent server-side validation covers request DTOs:
- SQL/JPQL/NoSQL access is parameterised; no string-built queries from input:
- Output encoding applied for HTML/JS/URL contexts:
- Deserialisation of untrusted data avoids native Java serialisation and
  restricts polymorphic JSON/XML binding:
- Spring Security or framework policies cover authentication, authorisation,
  CSRF, CORS, and session settings where applicable:
- Secrets use environment/secret-store integration, never source or packaged
  resources:
- File paths are normalised and constrained before filesystem access:
- Cryptography uses JCA/JCE or reviewed libraries with current algorithms:
- Dependencies reviewed with OWASP Dependency-Check, Gradle/Maven advisory
  tooling, or equivalent:

## Python

- Input validated at boundaries (e.g. Pydantic, dataclasses, framework
  validators, or explicit checks):
- SQL/NoSQL access is parameterised; no f-string/string-built queries from
  input:
- No `pickle`, unsafe PyYAML loaders, or dynamic import/eval/exec on
  untrusted input:
- `subprocess` uses argument arrays with `shell=False` unless justified:
- Requests and HTTP clients set timeouts and keep TLS verification enabled:
- File paths are resolved and constrained before filesystem access:
- Secrets use environment/secret-store integration, never source files:
- Dependency review covers lock files plus `pip-audit`, Safety, or equivalent:

## TypeScript / JavaScript

- Runtime input validation exists at trust boundaries (schema validation, DTO
  validation, or explicit checks):
- Output encoding or framework-safe rendering prevents XSS in HTML/JS/URL
  contexts:
- SQL/NoSQL access is parameterised; no string-built queries from input:
- Prototype pollution and unsafe object merge paths reviewed:
- No `eval`, `Function`, unsafe template execution, or dynamic code loading
  from untrusted input:
- SSRF-relevant outbound requests validate scheme, host, redirects, and
  internal network ranges:
- Authentication, session, CSRF, CORS, cookie, and CSP settings reviewed for
  the selected framework:
- Secrets use environment/secret-store integration, never client bundles or
  source:
- Dependency review covers lock files plus `npm audit`, OSV, Snyk, or
  equivalent:

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
