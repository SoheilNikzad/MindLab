# Microsoft reference curriculum audit

## Method and scope

Reviewed the English README and available code/assignment files in every
numbered directory of `microsoft/generative-ai-for-beginners` at observed
revision `79a4334` on 2026-11-09. The audit used file contents, not titles alone.
Images and translations were excluded from content extraction. Code counts
below include Python, TypeScript/JavaScript, notebooks, .NET notebooks, and
lesson data/configuration files found in the checked-out lesson tree.

The upstream README describes 21 lessons, while the repository also has course
setup directory 00; MindLab therefore treats it as 22 source packages rather
than calling setup a numbered lesson.

## Lesson-by-lesson findings

| Source | Read content: main and secondary concepts | Practice, video, code, further resources | Entry assumptions | MindLab unit |
|---|---|---|---|---|
| 00 Course setup | fork/Codespaces/local/container setup; providers; environment variables; troubleshooting | 3 setup guides; no lesson code or video | GitHub account; basic shell/editor | ENV-AI-001 |
| 01 Introduction | statistical ML, neural networks, generative AI, tokens, LLM operation, education use cases | 300-word startup assignment; knowledge check; linked video/learning collection; no code | none | FND-AI-101 |
| 02 Model comparison | foundation vs LLM; open-weight/proprietary; embedding/image/text models; encoder-decoder; service vs model; prompt/RAG/fine-tune/train choices | model-testing walkthrough, RAG challenge, knowledge check; no code | lesson 01 concepts | FND-MOD-110 |
| 03 Responsible AI | fairness, reliability/safety, privacy/security, inclusiveness, transparency/accountability; hallucination, harm and bias; measure/mitigate/operate | harm scenarios; Azure Content Safety challenge; knowledge check; no code | basic model behavior | ETH-RAI-101 |
| 04 Prompt fundamentals | tokenization; foundation/instruction-tuned models; prompt parts; instructions, examples, cues, templates, supporting content; best practices | interactive notebooks (3 code/notebook files), assignment and knowledge check; linked sandbox/video | endpoint credentials for live notebook | GEN-PRM-101 |
| 05 Advanced prompts | zero/few-shot; chain-of-thought; generated knowledge; least-to-most; self-refine; maieutic prompting; deterministic/varied output | Flask self-refine assignment, solution, challenge; 4 code/notebook files | prompt fundamentals; optional API | GEN-PRM-201 |
| 06 Text applications | SDK setup; configuration; single/multi-turn generation; tokens and output controls; recipe generator and filters | first app, recipe exercise, study/history bot assignment; 20 code/config files | programming; API/provider account | DEV-TXT-201 |
| 07 Chat applications | chat vs chatbot; API/SDK integration; UX/accessibility; system messages; customization/fine-tuning; metrics and responsible operation | classify/summarize chat assignments in several languages; 14 code files; linked video/resources | programming and text generation | DEV-CHAT-210 |
| 08 Search | keyword vs semantic search; embeddings; indexes/vector databases; cosine similarity | Azure provisioning exercise, search assignment and solution; 21 code/data files; 2 video links | Python, vectors, cloud account in source exercise | KNW-SEM-210 |
| 09 Image generation | image models; generation, base64 output, editing, safety/metaprompts | monument-generation assignment; Python/TS/.NET examples and notebooks; 10 code files; video | API access; prompt basics | MED-IMG-210 |
| 10 Low-code | Power Apps, Dataverse, Power Automate, AI Builder, Copilot Studio; data governance | student tracker and invoice processing assignments; 1 assignment file; UI-driven, no code | Power Platform environment/licensing | AUT-LOW-210 |
| 11 Function calling | purpose and use cases; JSON function definitions; tool-selection flow; application integration and error handling | course-recommendation function assignment; 9 code files | chat development; APIs and structured data | DEV-FNC-220 |
| 12 AI UX | usability, reliability, accessibility, pleasantness; trust, transparency, explainability, control, feedback/collaboration | redesign assignment; no code | basic design thinking | UX-AI-201 |
| 13 Security | AI threats/risks; confidentiality/integrity/availability; testing; data protection; red teaming | security scenarios, knowledge check and Purview challenge; no code | security basics helpful | SEC-AI-201 |
| 14 Lifecycle | MLOps-to-LLMOps shift; lifecycle stages; experimentation, evaluation, deployment, monitoring and tooling | conceptual lesson with one video link; no formal assignment/code | application lifecycle concepts | OPS-LLM-220 |
| 15 RAG/vector DB | knowledge base, chunking/embeddings, vector search, cosine similarity, indexing, re-ranking, grounding and evaluation | front-end/framework rebuild assignment; one notebook; code excerpts | embeddings/search; Python | KNW-RAG-220 |
| 16 Open models | meaning and benefits of open models; Llama/Mistral/Falcon overview; selection factors | catalog and Hugging Face exploration links; no assignment/code | model comparison | MOD-OPEN-210 |
| 17 Agents | agent concepts; state/tools; LangChain, AutoGen, Microsoft Agent Framework, TaskWeaver, JARVIS; sequential/parallel workflows | multi-department meeting agent assignment; code excerpts but no separate code file | function calling and orchestration | AGT-AI-230 |
| 18 Fine-tuning | when/why; dataset and method; Foundry technique/tier/model choices; limitations and best practices | follow an original tutorial; one resource/assignment file; video | model selection; evaluation; data quality | MOD-FT-301 |
| 19 SLM | LLM/SLM differences; Phi 3/3.5 text, vision and MoE; cloud and local inference; ONNX Runtime GenAI | Python/.NET/notebook examples; 4 code files | model fundamentals; Python for labs | MOD-SLM-210 |
| 20 Mistral | Mistral Large/Small/NeMo; RAG example; model comparison; tokenizer use and token counting | one assignment/notebook artifact and embedded Python | model selection; Python/provider endpoint | MOD-MIS-220 |
| 21 Meta | Meta model families; Llama 3.1 function calling; Llama 3.2 multimodality; retired-model substitutions | one assignment/notebook artifact and embedded Python | model selection; Python/provider endpoint | MOD-META-220 |

## Repeated or overlapping topics

- Prompt structure appears in 04, 05, 06, 09, 11, and 17. MindLab keeps the
  transferable specification in GEN-PRM-101/201 and lets domain units reference
  it instead of reteaching it.
- Responsible use appears in 03, 07, 09, 12, and 13. MindLab separates general
  responsibility, UX trust, content guardrails, and adversarial security.
- Model choice appears in 02, 16, 18, 19, 20, and 21. A shared decision matrix
  belongs in FND-MOD-110; vendor/model units add only distinctive capabilities.
- Embeddings and vector search repeat across 08 and 15. KNW-SEM-210 owns vector
  fundamentals; KNW-RAG-220 owns retrieval, grounding, re-ranking, and evaluation.
- Evaluation/monitoring appear in 07, 14, 15, and 18. OPS-LLM-220 should define
  the common evaluation record, reused by chat, RAG, and fine-tuning units.

## Provider-dependency findings and separation plan

The source frequently couples exercises to Azure OpenAI/Microsoft Foundry,
OpenAI API, Power Platform, Codespaces, or named model families. MindLab retains
vendor-specific adapters only where they teach a genuine platform capability.
Core units specify capabilities instead: text generation, embeddings, image
generation/editing, structured tool calls, vector storage, local inference, or
workflow automation. Every runnable unit must offer a fallback that does not
require a paid feature. Product UI screenshots and model availability are
versioned, optional appendices, not learning objectives.

## Cross-cutting prerequisites

- Foundation track: digital literacy and source evaluation.
- Build track: basic Python or TypeScript, environment variables, command line,
  JSON, and HTTP/API concepts.
- Search/RAG: vectors, basic Python, tabular data, and evaluation thinking.
- Agents: function calling, state, permissions, failure handling, and security.
- Domain pathways: domain vocabulary and independent human authority for the
  decisions that the model may only assist.

## Source caveats recorded for MindLab

Several live product/model statements are time-sensitive. One source lesson
still frames temperature as a normal control while repository guidance notes
that the default reasoning model rejects temperature; model availability and
retirement notes also change. MindLab therefore dates tool/model claims and
keeps them out of stable learning outcomes.
