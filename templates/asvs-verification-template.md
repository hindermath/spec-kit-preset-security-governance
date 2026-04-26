# ASVS Verification

## Context

- System or feature:
- Reviewer:
- Date:
- ASVS version used:

## Verification Level (MUST be explicit)

Pick exactly one. Do not leave this unspecified.

- Level 1 — basic / opportunistic. Suitable for simple internal tools or
  low-risk public surfaces with no sensitive data.
- Level 2 — standard. Suitable for most authenticated, multi-user, or
  data-bearing applications. This is the default for typical web/API work.
- Level 3 — advanced. Required for high-assurance applications: regulated
  data, high-value financial flows, critical infrastructure.

Selected Level: __ (1 / 2 / 3)
Rationale for level choice:

## Verification Scope

- Authentication
- Session management
- Access control
- Input validation, sanitisation, and encoding
- Stored cryptography
- Error handling and logging
- Data protection
- Communication security (TLS configuration)
- Malicious code defence (deserialisation, dependency boundary)
- Business logic
- Files and resources
- API and web service
- Configuration

For each in-scope area: name the verifier (manual review, automated test,
external audit) and the location of the evidence.

## Results

- Passed (control IDs):
- Failed (control IDs + finding):
- Not applicable (control IDs + rationale — no silent omission):

## Follow-Up

- Required remediations and owners:
- Re-verification trigger (date, release, scope change):
- Cross-references (security checklist, threat model, supply-chain
  evidence):
