# Memory-Safe Language Applicability

## Spec-Kit Run Evidence

- Feature / Spec ID:
- Spec-Kit phase: [specify / plan / tasks / implement / review / release]
- Branch / commit / PR:
- Run date:
- Evidence owner:
- Reviewer:
- Standards / criteria checked: ISO 27001/27002 secure development controls, NIST SSDF, CWE Top 25, OWASP ASVS, SBOM, AI-SBOM, VEX, SLSA, OpenSSF Scorecard, CRA, NIS2, EU AI Act, DORA
- Decision: [Applicable / N/A / Open]
- Evidence path:
- N/A rationale, if not applicable:
- Open follow-up owner and trigger:
- Re-evaluation trigger:
- Certification-readiness note: Use this record as internal certification-readiness evidence; it does not replace an external auditor, legal assessment, C5 report, or formal conformity assessment.

## Audit Evidence Matrix

| Checkpoint / control reference | Applicability | Evidence produced or linked | Result | Residual risk / rationale |
| --- | --- | --- | --- | --- |
| Spec-Kit run scope is identified | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| Standard-specific criteria are mapped | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| Evidence artefact path is recorded | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| N/A decisions are justified | [Applicable / N/A / Open] | | [OK / Open / N/A] | |
| Open findings have owner and trigger | [Applicable / N/A / Open] | | [OK / Open / N/A] | |

## Context

- System or feature:
- Primary implementation language:
- Reviewer:
- Date:

## MSL Status

- Memory-safe:
- Not memory-safe:

## Allow-List Summary

- Rust, Swift
- C#, F#, VB.NET
- Java, Kotlin, Scala, Clojure, Groovy
- Go, Dart
- Python, Ruby, JavaScript, TypeScript, PHP, Lua
- Haskell, OCaml, Elm, PureScript
- Erlang, Elixir, Gleam
- Ada, SPARK

## Common Non-MSL Examples

- C
- C++
- Assembly
- `cc65` / C89-style retro toolchains
- classic Objective-C
- Zig pre-1.0
- Nim in manual-memory mode
- D without the default GC

## Justification

- Constraint:
- Why this constraint applies:
- Alternative considered:

## Follow-Up

- Additional mitigations needed:
- Related evidence:
