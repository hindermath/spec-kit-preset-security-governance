# User guide: security-governance

<!-- current-package: 0.7.3 -->

[Deutsch](user-guide.md) · [Preset reference](../README.md)

Source candidate **v0.7.3**. Verify the actually published version on the [release page](https://github.com/hindermath/spec-kit-preset-security-governance/releases). This guide grants no merge, release or project authority.

Contents: [Start](#start) · [Example](#example) · [Terms](#terms) · [Routing](#routing) · [Troubleshooting](#help) · [References](#references)

<a id="start"></a>

## Start and audience

Plan and explain secure development without claiming a passed security assessment.

For apprentices in all four IHK IT occupations: IT specialists (application development, systems integration, data/process analysis, digital networking), IT systems electronics technicians, digitalisation management specialists and IT systems management specialists. Also for developers without specialist governance knowledge. You do not need to edit hashes or invent model IDs to ask for the next step. Ask the maintainer to check technical bindings.

Use an already initialized Spec Kit target repository. Read the prerequisites and installation instructions in the preset reference first; replace example paths. A template is a starter, not completed evidence. Installation adds instructions and files; it does not start a feature or grant approval.

Input: Describe a new HTTP API, its data and planned release.

<a id="example"></a>

## One complete example

1. Describe the bounded task and existing files. Do not silently widen scope.
2. Use the following example in the agent chat. It is a prompt, not a shell command:

~~~text
Use standard-applicability-template and asvs-verification-template for my HTTP API. Plan docs/security/asvs-verification.md and specific verification tasks. Do not run scanners yet.
~~~

3. Applicability and verification scope are explained; tasks name open tests, owners and evidence paths. Empty templates are not assessments.
4. Check the result and recorded next action. Changes, repair, feature execution and delivery each need their applicable authority. A passing technical check is not human acceptance.

Read-only installation check in the initialized target repository:

~~~text
specify preset info security-governance
specify preset resolve standard-applicability-template
~~~

Resolve reports the selected template source; it does not fill in or execute that template.

<a id="terms"></a>

## Terms and evidence

- **ASVS:** OWASP application-security verification catalogue; explicitly choose scope.
- **SBOM / VEX:** Component inventory / reasoned statement about whether a known vulnerability affects the product.
- **MSL:** Memory-safe language; it does not automatically prevent all security faults.

Where the existing contract uses these values: Applicable means relevant, not passed; N/A needs a reason; Open needs the recorded next action and responsible person. This explanation adds no fields to existing schemas. Keep genuine historical evidence; never edit a hash or approval just to make a check pass.

<a id="routing"></a>

## Stable routing and explicit actions

| Command | Declared role |
|---|---|
| `speckit.specify` | `frontier-reasoning` |
| `speckit.plan` | `frontier-reasoning` |
| `speckit.tasks` | `frontier-reasoning` |

Roles describe tasks, not a model name or quality guarantee. Read the actual model-routing.json contract; generic examples such as coding-review do not override a stronger command requirement. The existing autonomous runner retains the strongest overlapping role, independently of installation priority. Merely installing a role contract does not switch a live chat or configure personal profiles.

A model-free script check and an agent assessment are different activities. Model calls, including model-access preflights, can consume quota even when they are read-only. No probe or provider switch is authorized by this documentation. No new dynamic-routing implementation is included.

Package version, schema version and historical field test are different facts. Earlier acceptance applies only to its recorded scope and source state.

<a id="help"></a>

## Troubleshooting and safe next action

A missing scanner is not a passing test. An open legal question needs a responsible human; educational use is not a blanket exemption.

If a command or template is missing, inspect preset info and the manifest below. Check the documented minimum tools and enabled installation. Resolve ambiguity with the maintainer; do not change policy, disable validators or claim an unperformed test. A safety blocker remains a blocker.

This language/accessibility pass targets CEFR B2 and applicable WCAG 2.2 AA. Static tests do not certify that target. Screen-reader, Braille and representative-user tests not actually performed remain unverified.

<a id="references"></a>

## Templates and deeper reference

- [`msl-applicability-template`](../templates/msl-applicability-template.md)
- [`standard-applicability-template`](../templates/standard-applicability-template.md)
- [`security-checklist-template`](../templates/security-checklist-template.md)
- [`secure-coding-language-rules-template`](../templates/secure-coding-language-rules-template.md)
- [`dependency-audit-template`](../templates/dependency-audit-template.md)
- [`asvs-verification-template`](../templates/asvs-verification-template.md)
- [`supply-chain-evidence-template`](../templates/supply-chain-evidence-template.md)
- [`cra-applicability-template`](../templates/cra-applicability-template.md)
- [`regulatory-applicability-template`](../templates/regulatory-applicability-template.md)
- [`gdpr-applicability-template`](../templates/gdpr-applicability-template.md)
- [`ai-act-applicability-template`](../templates/ai-act-applicability-template.md)
- [`nis2-applicability-template`](../templates/nis2-applicability-template.md)
- [`dora-applicability-template`](../templates/dora-applicability-template.md)

These names identify available starters; they are not an instruction to create every file. Reuse existing suitable evidence. JSON field names remain technical identifiers, not translated keys.

- [Manifest and prerequisites](../preset.yml)
- [Stable command-role contract](../model-routing.json)
- [Documentation scope, review and test limits](documentation-closeout.md)
