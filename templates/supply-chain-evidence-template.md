# Supply-Chain Evidence

## Context

- System or release:
- Reviewer:
- Date:
- Released version(s) covered:

## SBOM (Software Bill of Materials)

- Format used (CycloneDX, SPDX):
- Generator and version:
- Storage location of the SBOM artefact:
- Generated per release artefact set:
  (yes / no / N/A — with rationale)
- Published externally:
  (yes / no / N/A — with rationale)

## AI-SBOM (AI Software Bill of Materials)

- Applicable:
  (yes / no / N/A - with rationale)
- AI usage classification:
  (development tooling only / absent from released or operated system /
  AI runtime or product component)
- Publication status:
  (internal only / published / N/A - with rationale)

| G7/BSI cluster | Evidence | Status |
|----------------|----------|--------|
| Metadata | System, provider, versions, owners | OK / open / N/A |
| System-level properties | Purpose, AI function, operating mode | |
| Models | Model name, version, provider, license or use terms | |
| Datasets | Training, fine-tuning, embedding, or RAG data, where known | |
| Infrastructure | Inference provider, hosting, runtime, deployment region | |
| Security properties | Access, logging, data flows, controls, abuse prevention | |
| Key performance indicators | Quality, safety, security, or operational KPIs | |

If AI is used only as a development tool and no AI component is part of the
released or operated system, record `AI-SBOM` as `N/A` with a short toolchain
rationale.

## VEX (Vulnerability Exploitability eXchange)

For each known vulnerability in shipped or evaluated components, record a
status statement.

| CVE / advisory | Component | Status | Justification |
|----------------|-----------|--------|---------------|
| | | affected / not affected / mitigated / under investigation | |

- Storage location of the VEX statements:
- Disclosure cadence (with each release / on demand / N/A):

## SLSA (Supply-chain Levels for Software Artefacts)

- Targeted SLSA level:
  (L1 minimum where feasible; aim for L2+ over time)
- Build platform and isolation:
- Provenance generation tool and storage location:
- Signing and verification approach:
- Gaps to next level and planned mitigations:

## OpenSSF Scorecard

- Applicable (public OSS repository or high-impact external dependency):
  (yes / no / N/A — with rationale)
- Last Scorecard run date and overall score:
- Findings reviewed and follow-ups recorded:

## Build and Distribution Integrity

- CI build provenance recorded:
- Release artefacts signed:
- Distribution channel verified (registry, store, internal mirror):

## Cross-References

- Dependency audit:
- ASVS verification (with Level):
- AI-SBOM decision/evidence:
- CRA applicability (if release affects EU market reach):

## Follow-Up

- Open risks:
- Required mitigations and owners:
- Re-evaluation trigger (date, release, supply-chain incident):
