# Learning-unit catalog

The canonical machine-readable catalog is [catalog.csv](./catalog.csv). This
initial architecture contains **28 composable learning units**: 23 general or
technical units and 5 accounting units. Durations describe expected learner
effort for a unit; they do not prescribe sessions.

| ID | English title | Level | Prerequisites | Source anchor | Status |
|---|---|---|---|---|---|
| ENV-AI-001 | Safe AI learning environment | Foundation | None | Microsoft 00 | Draft |
| FND-AI-101 | Generative AI and LLM foundations | Foundation | None | Microsoft 01 | Draft |
| FND-MOD-110 | Model families and model selection | Foundation | FND-AI-101 | Microsoft 02 | Draft |
| ETH-RAI-101 | Responsible AI in practice | Foundation | FND-AI-101 | Microsoft 03 | Draft |
| GEN-PRM-101 | Reliable prompt design | Foundation | FND-AI-101 | Microsoft 04 + IAU W1 | Ready |
| GEN-PRM-201 | Advanced prompting and self-refinement | Intermediate | GEN-PRM-101 | Microsoft 05 | Draft |
| DEV-TXT-201 | Text-generation applications | Intermediate | GEN-PRM-101, programming | Microsoft 06 | Draft |
| DEV-CHAT-210 | Conversational application design | Intermediate | DEV-TXT-201 | Microsoft 07 | Draft |
| KNW-SEM-210 | Embeddings and semantic search | Intermediate | FND-MOD-110, Python | Microsoft 08 | Draft |
| MED-IMG-210 | Image generation and editing | Intermediate | GEN-PRM-101, ETH-RAI-101 | Microsoft 09 | Draft |
| AUT-LOW-210 | Low-code AI workflows | Intermediate | GEN-PRM-101 | Microsoft 10 | Draft |
| DEV-FNC-220 | Tool use and function calling | Intermediate | DEV-CHAT-210, structured data | Microsoft 11 | Draft |
| UX-AI-201 | Trustworthy AI user experience | Intermediate | ETH-RAI-101 | Microsoft 12 | Draft |
| SEC-AI-201 | AI application security | Intermediate | ETH-RAI-101, security basics | Microsoft 13 | Draft |
| OPS-LLM-220 | LLM lifecycle and evaluation | Intermediate | DEV-TXT-201 | Microsoft 14 | Draft |
| KNW-RAG-220 | Grounded generation with RAG | Intermediate | KNW-SEM-210, DEV-TXT-201 | Microsoft 15 | Draft |
| MOD-OPEN-210 | Open and open-weight models | Intermediate | FND-MOD-110 | Microsoft 16 | Draft |
| AGT-AI-230 | Agents and controlled automation | Advanced | DEV-FNC-220, SEC-AI-201 | Microsoft 17 | Draft |
| MOD-FT-301 | Fine-tuning decisions and workflow | Advanced | FND-MOD-110, OPS-LLM-220 | Microsoft 18 | Draft |
| MOD-SLM-210 | Small models and local inference | Intermediate | FND-MOD-110, Python | Microsoft 19 | Draft |
| MOD-MIS-220 | Building with Mistral models | Intermediate | FND-MOD-110, Python | Microsoft 20 | Draft |
| MOD-META-220 | Building with Meta models | Intermediate | FND-MOD-110, Python | Microsoft 21 | Draft |
| DAT-DOC-201 | Document extraction and verification | Intermediate | GEN-PRM-101, spreadsheets | IAU proposal/W1 | Draft |
| ACC-PRM-101 | Professional prompting for accountants | Foundation | GEN-PRM-101, accounting basics | IAU W1 | Draft |
| ACC-DOC-201 | Invoice extraction and reconciliation | Intermediate | ACC-PRM-101, spreadsheets | IAU proposal/W1/W2 | Ready |
| ACC-OPS-210 | Controlled accounting operations | Intermediate | ACC-DOC-201 | IAU W2 | Draft |
| ACC-REP-220 | Financial analysis and reporting | Intermediate | ACC-DOC-201, ratios | IAU W3 | Draft |
| ACC-AST-230 | Safe accounting assistants | Advanced | ACC-OPS-210, SEC-AI-201 | IAU W4 | Draft |

`Ready` means the unit has complete learner and instructor material and has
passed structural checks; it does not mean institutional approval.
