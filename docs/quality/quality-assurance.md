# Scientific and technical quality assurance

## Gates

1. **Scope gate** — the unit has one transferable capability, stable ID, and
   measurable outcomes.
2. **Provenance gate** — primary sources, source revisions, licenses, and
   adaptations are recorded; copied material retains its notice.
3. **Scientific gate** — a domain reviewer checks correctness, uncertainty,
   terminology, and the date of changeable claims.
4. **Technical gate** — a second person runs the demonstration and exercise
   from a clean environment, including the stated fallback.
5. **Safety/privacy gate** — public assets contain no private source exports,
   personal fields, credentials, or real operational data.
6. **Assessment gate** — objectives map to observable evidence and the rubric;
   critical failures cannot be averaged away.
7. **Language/accessibility gate** — links, headings, Unicode, RTL rendering,
   terminology, keyboard access, and alternative text are checked.

## Status transitions

| From | To | Required evidence |
|---|---|---|
| Draft | Scientific review | complete source list and objectives |
| Scientific review | Technical review | named reviewer and resolved findings |
| Technical review | Ready | clean-run record and fallback test |
| Ready | Published | release decision and public-link check |

Any source, model, law, rate, tool interface, or security assumption change
returns the affected unit to review. `Ready` is a content state, never an
institutional endorsement.

## Review record minimum

Record date, reviewer role, source revision, environment, tool/model version,
test data hash or version, result, unresolved limitations, and next trigger.

## Automated checks

Run `scripts/validate_content.sh`. It validates unique IDs, required catalog
fields, relative Markdown links, forbidden private-source markers, UTF-8, and
the presence of both complete sample units. External links require a separate
network-enabled review because a successful HTTP response is not evidence of
scientific correctness.
