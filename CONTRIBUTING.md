# Contributing to MindLab

MindLab welcomes scientific, technical, editorial, and translation work.

## Before writing

1. Choose or propose a stable unit ID using `AREA-TOPIC-NNN`.
2. Use the templates in `curriculum/templates`, `exercises/templates`,
   `assessments/templates`, and `instructor-guides/templates`.
3. Cite the original source of every borrowed claim, diagram, code fragment,
   or dataset. Do not cite an aggregator when the primary source is available.
4. Keep vendor-specific instructions in an optional adapter or fallback note;
   state the capability the learner needs.
5. Use only synthetic or explicitly licensed data in public exercises.

## Required review states

`Draft` → `Scientific review` → `Technical review` → `Ready` → `Published`.
Reviewers must be different from the author for high-stakes domain content.
Legal, tax, medical, security, and financial claims require a dated primary
source and a human reviewer qualified for the domain.

## Bilingual content

English is the default language for repository-level documentation; Persian is
supported as a first-class teaching language. Persian files use `.fa.md`,
semantic HTML `dir="rtl"` where useful, UTF-8, Persian punctuation in prose,
and the terminology register in `resources/terminology.fa-en.md`.

## Upstream-portable work

Corrections that can benefit Microsoft's original course must be developed in
the source fork on a separate branch. Do not mix those corrections with
MindLab-specific pathways or institutional material. Microsoft requires its
contribution rules and CLA. Opening any public upstream pull request requires
the project owner's explicit approval.

## Commit practice

Use focused commits, for example `curriculum: add reliable prompting unit` or
`accounting: add synthetic invoice reconciliation exercise`. Do not commit
credentials, real student work, private Drive exports, or generated secrets.
