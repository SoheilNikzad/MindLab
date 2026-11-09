# MindLab

[فارسی](./README.fa.md)

MindLab is an independent, public, open-source, modular, and multilingual
learning library for artificial intelligence. It is organized around reusable
**learning units**, not fixed sessions or courses. An instructor can combine
units by discipline, learner level, available time, and learning outcome.

Accounting is the first specialist pathway. MindLab is not limited to
accounting or to any university. It is not represented as endorsed by,
affiliated with, or sponsored by Microsoft or Islamic Azad University.

## Start here

- [Learning-unit catalog](./curriculum/index.md)
- [Accounting pathway](./pathways/accounting/README.md)
- [Complete general unit: reliable prompting](./curriculum/units/GEN-PRM-101/README.md)
- [Complete accounting unit: invoice extraction and reconciliation](./curriculum/units/ACC-DOC-201/README.md)
- [Microsoft curriculum audit](./docs/source-analysis/microsoft-curriculum-audit.md)
- [Microsoft–IAU source map](./docs/source-analysis/source-map.md)
- [Quality and review process](./docs/quality/quality-assurance.md)

## Unit contract

Every unit records a stable ID, Persian and English titles, measurable
objectives, level, prerequisites, estimated effort, theory, demonstration,
learner exercise, required tools, assessment, sources, and drafting/review
status. Units are designed to remain useful when a vendor, model, or user
interface changes.

## Repository map

```text
curriculum/         catalog, unit specification, complete units
pathways/           composable discipline pathways
exercises/          reusable datasets and exercise assets
assessments/        rubrics and assessment templates
instructor-guides/  delivery and review guidance
resources/          terminology and source records
translations/       translation policy and language indexes
docs/               provenance, source analysis, governance, quality
```

## Provenance and licensing

MindLab's structure and new writing are licensed under the MIT License. The
Microsoft course was reviewed as a reference; its copyrights, license, and
source links remain identified in [NOTICE.md](./NOTICE.md). No Microsoft code
or lesson text is vendored in this initial commit. IAU source documents were
read in place and were not copied, modified, or made public. Only generalized
educational facts, objectives, and newly written exercises based on synthetic
data are included.

## Status

This is an initial working release. The catalog and both sample units are
usable; other units are explicitly marked `Draft` until scientific and
technical review is recorded.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md). Keep upstream-portable corrections
separate from MindLab-specific work. Do not open a Microsoft pull request from
this repository without the project owner's explicit approval.
