# Cross-model confirm runs (ARVO scorable set, no-guard pipeline)

Same candidates and prompts as `noguard_results/` (gemini-2.5-flash, thinking off), with the
judge model swapped. Each `<model>/<project>.json` holds recall_runner rows including
`llm_details` (per-candidate verdict and rationale). Pro models run with thinking enabled
(they reject `thinking_budget=0`). `dropped3/` re-runs the three true bugs the flash run
dropped, three times each. Summaries: `python3 aggregate.py crossmodel/<model>`.
