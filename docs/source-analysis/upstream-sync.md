# Reference fork and upstream synchronization

The reference fork is intentionally separate from MindLab. When available:

```bash
git clone https://github.com/SoheilNikzad/generative-ai-for-beginners.git
cd generative-ai-for-beginners
git remote add upstream https://github.com/microsoft/generative-ai-for-beginners.git
git fetch upstream --prune
git switch main
git merge --ff-only upstream/main
git push origin main
```

Verify the GitHub repository reports `fork: true` and parent
`microsoft/generative-ai-for-beginners`. Compare all upstream branch names with
the fork; GitHub's fork form must have “Copy the main branch only” disabled if
the goal is to include every branch. Do not rewrite reference history.

MindLab is a separate repository with its own history. Source updates are
reviewed through `docs/source-analysis`, then adapted in focused MindLab commits;
there is no bulk merge from the Microsoft repository into MindLab.
