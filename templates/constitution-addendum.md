## Secure Development Governance

### Memory-safe language preference

- Prefer a memory-safe language (MSL) as the primary implementation runtime
  whenever the target platform allows it.
- If the primary implementation language is not memory-safe, record a short
  written justification that names the constraint (target hardware, legacy C
  API, retro platform, interoperability requirement, safety-certified non-MSL
  toolchain) rather than merely restating the fact.
- When a project uses an MSL, secure code generation still requires the best
  practices of that specific MSL and its framework. MSL preference governs
  language choice; secure code generation governs how the chosen language is
  used.
- MSL allow-list summary: Rust, Swift, C#/F#/VB.NET, Java/Kotlin/Scala/Clojure/
  Groovy, Go, Dart, Python, Ruby, JavaScript, TypeScript, PHP (Zend ≥ 7), Lua,
  Haskell, OCaml, Elm, PureScript, Erlang, Elixir, Gleam, Ada, SPARK.
- Common non-MSL examples requiring justification: C, C++, Assembly,
  `cc65`-style C89, classic Objective-C, Zig pre-1.0, Nim in manual-memory
  mode, D without the default GC.

### Secure code generation

- AI-generated and human-written code MUST follow the secure-coding best
  practices of the target language and framework.
- AI-generated code MUST avoid known vulnerability classes from the OWASP
  Top 10 and the language-specific subset of `CWE Top 25` relevant to the
  project runtime.
- Apply language-specific secure-coding standards (see
  `secure-coding-language-rules-template`):
  - C / C89: bounds checking, no `gets()`, no unchecked `sprintf()`/`strcpy()`,
    integer overflow guards, CERT C.
  - C# / .NET: parameterised queries, output encoding, anti-forgery tokens,
    policy-based authorisation, secure deserialisation, Microsoft Secure
    Coding Guidelines.
  - Rust: isolate `unsafe`, avoid panic paths from untrusted input, validate
    deserialised data, use reviewed crypto and dependency-audit tooling.
  - Go: set HTTP timeouts, propagate `context`, prevent SSRF, use
    `crypto/rand`, and run `govulncheck` or equivalent.
  - Swift: avoid force unwraps on untrusted data, validate decoded input, use
    Keychain/CryptoKit/platform TLS defaults, and constrain file URLs.
  - Java / Kotlin: validate DTOs, parameterise persistence access, restrict
    deserialisation, enforce framework auth/CSRF/CORS/session settings.
  - Python: validate boundary input, avoid unsafe deserialisation and dynamic
    execution, constrain subprocess/file access, run dependency auditing.
  - TypeScript / JavaScript: validate runtime input, prevent XSS/prototype
    pollution/SSRF, avoid dynamic code execution, audit lock files.
  - SQL: parameterised statements only, least-privilege accounts, no dynamic
    SQL from untrusted input.
  - Bash: quoted variables, no `eval` on untrusted input, `--` end-of-options.
  - PowerShell: `Set-StrictMode -Version Latest`, validated parameters, no
    `Invoke-Expression` on untrusted input.
- Cryptographic choices MUST use current algorithms (AES-256, RSA ≥ 3072,
  SHA-256+, Ed25519). Deprecated algorithms (MD5, SHA-1 for signatures, DES,
  RC4) require an explicit risk acknowledgement.
- Error handling MUST NOT expose internal state, stack traces, or connection
  strings to end users.
- Dependencies added by AI-generated code MUST be from actively maintained
  sources with no known critical CVEs at the time of addition.

### Standards applicability

- Determine which of `NIST SSDF` (SP 800-218), `CWE Top 25`, `OWASP ASVS`,
  `SBOM`, `AI-SBOM`, `VEX`, `SLSA`, `OWASP Cheat Sheet Series`, `OWASP Proactive
  Controls`, and `OpenSSF Scorecard` apply to this project.
- `NIST SSDF` and `CWE Top 25` are never `N/A` for production-bound work.
- Web, API, HTTP, and authentication-bearing services MUST select an
  `OWASP ASVS` verification level (1, 2, or 3) and record it.
- Any `N/A` classification MUST be documented with a short justification.
  Silent omission is not allowed.

### Mandatory security documentation

- Every project subject to this preset MUST maintain:
  - a Security Checklist (`security-checklist-template`),
  - a Dependency Audit (`dependency-audit-template`),
  - and, where applicable, an MSL applicability record
    (`msl-applicability-template`).
- Web/API projects MUST additionally maintain an ASVS verification document
  (`asvs-verification-template`).
- Release-capable or distributable projects MUST maintain a Supply-Chain
  Evidence document (`supply-chain-evidence-template`) covering SBOM, AI-SBOM
  applicability where relevant, VEX, SLSA, and where applicable OpenSSF
  Scorecard observations.
- Default evidence location: `docs/security/`.

### Supply-chain transparency

- Every release-capable or distributable project MUST generate a
  machine-readable `SBOM` for each released artefact set, regardless of
  whether the SBOM is published externally.
- Projects that include AI models, AI services, training or embedding
  datasets, inference infrastructure, or AI runtime components in a released
  artefact or operated system MUST assess whether an `AI-SBOM` is applicable.
  When applicable, the supply-chain evidence MUST cover the seven G7/BSI
  AI-SBOM clusters: metadata, system-level properties, models, datasets,
  infrastructure, security properties, and key performance indicators.
- AI tools used only for development assistance do not by themselves require a
  product `AI-SBOM`; record `AI-SBOM` as `N/A` with a short toolchain rationale
  when supply-chain evidence is maintained.
- Where shipped or evaluated components have known vulnerabilities, the
  project MUST record a `VEX`-style status statement (affected, not affected,
  mitigated, under investigation).
- CI/CD-built or published artefacts SHOULD target `SLSA` controls (at least
  L1 where feasible, aiming for L2+ over time).
- Public OSS repositories and high-impact external dependencies SHOULD
  consider `OpenSSF Scorecard` findings.
- Dependency tracking SHOULD prefer automated tooling (Renovatebot/Dependabot
  for update PRs, Dependency Track for continuous SBOM/CVE monitoring) over
  manual static documentation.

### EU Cyber Resilience Act (CRA) awareness

- Every project MUST assess whether its software qualifies as a "product with
  digital elements" under the EU Cyber Resilience Act (Regulation (EU)
  2024/2847).
- CRA-scoped projects MUST record:
  - the applicability decision and conformity assessment approach
    (self-assessment for most products; third-party for critical or important
    products under CRA Annex III/IV),
  - SBOM availability per released version,
  - a documented vulnerability disclosure and handling process with the
    24-hour reporting expectation for actively exploited vulnerabilities,
  - alignment with secure-by-design and secure-by-default principles.
- All projects SHOULD align practices with CRA principles regardless of
  formal scope, because the CRA reflects emerging baseline expectations.
- Projects with AI runtime components SHOULD record whether the EU AI Act,
  CRA, or sector-specific rules create additional transparency, supply-chain,
  or security obligations. The G7/BSI AI-SBOM minimum elements do not create
  direct legal obligations by themselves, but SHOULD be used as target
  architecture for systems that ship or operate AI components.
- The CRA applicability decision MUST be recorded in `docs/security/`
  (default: `cra-applicability-template`) or equivalent governance
  documentation, including for `N/A` decisions.

### Regulatory applicability

- Projects SHOULD record a lightweight regulatory applicability decision when
  release, market placement, customer handover, cloud operation, AI
  runtime/product components, financial-sector ICT dependencies, or regulated
  customers/supply chains are in scope.
- `NIS2`, `CRA`, `EU AI Act`, `DORA`, sector-specific rules, and customer
  obligations are screened as `Applicable`, `N/A`, or `Open` using
  `regulatory-applicability-template`.
- Private training, learning, and reference projects MAY record these
  regulations as `N/A` when no regulated service, regulated customer,
  EU-market product, AI runtime/product component, financial-sector ICT
  dependency, or regulated supply-chain role exists. The rationale must be
  explicit; silent omission is not allowed.
- CRA-scoped projects SHOULD link the overview record to the deeper
  `cra-applicability-template` evidence.
