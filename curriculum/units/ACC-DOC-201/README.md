---
id: ACC-DOC-201
title_en: Invoice extraction and reconciliation
title_fa: استخراج و مغایرت‌گیری فاکتور
level: intermediate
status: Ready
estimated_minutes: 180
prerequisites: [ACC-PRM-101, spreadsheet basics, basic purchase accounting]
authors: [MindLab contributors]
scientific_reviewers: []
technical_reviewers: [initial structural review]
last_reviewed: 2026-11-09
---

# Invoice extraction and reconciliation

## Short description

Learners extract ten synthetic invoice rows, preserve the stated source
amounts, calculate expected amounts in a spreadsheet, identify a deliberate
50,000-rial discrepancy, and write a conditional accounting note without
inventing payment, tax, discount, or account-code facts.

## Objectives

The learner can:

1. extract exactly ten rows into a defined schema and mark absent fields;
2. preserve source transcription separately from calculated values;
3. implement formulas for quantity × unit price, row difference, and totals;
4. locate and explain the 50,000-rial discrepancy using the source row; and
5. state what evidence is required before any accounting entry is finalized.

## Prerequisites

Invoice line items, debit/credit equality at an introductory level, spreadsheet
cell formulas, and GEN-PRM-101. No API or programming is required.

## Theory

Extraction is not approval. Source fields are immutable observations;
calculated fields are controls. AI may suggest a schema or transcription but
cannot establish whether a purchase was cash/credit, taxable, discounted,
properly classified, or authorized when the source does not say so. A mismatch
is a review flag, not proof of fraud.

## Demonstration

Load [synthetic-invoice.tsv](../../../exercises/accounting/synthetic-invoice.tsv)
or copy its text into an available model using the included extraction prompt.
Import the response into a spreadsheet. Add:

```text
calculated_amount = quantity * unit_price
difference = stated_amount - calculated_amount
```

Check row 8: two calculators at 650,000 rials calculate to 1,300,000, while
the source states 1,350,000. Keep 1,350,000 in the source column. Expected
totals: stated 8,865,000; calculated 8,815,000; difference +50,000 rials.

## Exercise

Submit a spreadsheet with the ten source rows, formulas, totals, discrepancy
note, prompt V1/V2, and a conditional accounting memo. The memo must say that
payment method, tax, discount, item classification, and chart-of-accounts code
are unknown and require evidence. Do not use a real invoice or publicly share a
learner folder. If upload is unavailable, paste TSV text; if no AI is available,
use the instructor's unverified sample extraction and perform all controls.

## Tools

Required: spreadsheet software and either a text model or sample extraction.
Optional examples: Google Sheets, LibreOffice Calc, Excel; ChatGPT, Gemini, or
Claude. A free/no-upload route must remain available.

## Assessment

See [rubric](../../../assessments/accounting/ACC-DOC-201-rubric.md). Pass is
75/100 with no critical failure. The learner must independently explain why
the source amount is preserved and why a proposed entry remains conditional.

## Sources

- IAU “Applied AI for Accounting proposal v0.3”, workshop 1, detailed workshop
  1 plan v0.1, and workshop 2; read in place on 2026-11-09, not copied.
- Microsoft, [Prompt Engineering Fundamentals](https://github.com/microsoft/generative-ai-for-beginners/tree/main/04-prompt-engineering-fundamentals), revision `79a4334`.
- Microsoft, [Using Generative AI Responsibly](https://github.com/microsoft/generative-ai-for-beginners/tree/main/03-using-generative-ai-responsibly), revision `79a4334`.

## Review record

The arithmetic key and fallback paths were checked on 2026-11-09. Named
scientific reviewer approval is still required before institutional delivery.
