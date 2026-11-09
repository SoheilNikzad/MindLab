#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repo_root"

fail=0
say_fail() { echo "FAIL: $*"; fail=1; }

[[ -f curriculum/catalog.csv ]] || say_fail "catalog missing"
[[ -f curriculum/units/GEN-PRM-101/README.md ]] || say_fail "general sample missing"
[[ -f curriculum/units/ACC-DOC-201/README.md ]] || say_fail "accounting sample missing"
[[ -f exercises/general/synthetic-policy.txt ]] || say_fail "general exercise missing"
[[ -f assessments/general/GEN-PRM-101-rubric.md ]] || say_fail "general rubric missing"
[[ -f instructor-guides/general/GEN-PRM-101.md ]] || say_fail "general instructor guide missing"

header="id,title_en,title_fa,domain,level,prerequisites,estimated_minutes,status,primary_source"
[[ "$(head -n 1 curriculum/catalog.csv)" == "$header" ]] || say_fail "catalog header mismatch"

duplicate_ids="$(tail -n +2 curriculum/catalog.csv | cut -d, -f1 | sort | uniq -d)"
[[ -z "$duplicate_ids" ]] || say_fail "duplicate unit IDs: $duplicate_ids"

unit_count="$(tail -n +2 curriculum/catalog.csv | wc -l | tr -d ' ')"
[[ "$unit_count" == "28" ]] || say_fail "expected 28 units, found $unit_count"

invalid_status="$(tail -n +2 curriculum/catalog.csv | cut -d, -f8 | rg -v '^(Draft|Scientific review|Technical review|Ready|Published)$' || true)"
[[ -z "$invalid_status" ]] || say_fail "invalid catalog status: $invalid_status"

while IFS=: read -r md line target; do
  clean="${target%%#*}"
  clean="${clean%%\?*}"
  [[ -z "$clean" || "$clean" =~ ^https?:// || "$clean" =~ ^mailto: ]] && continue
  base="$(dirname "$md")"
  [[ -e "$base/$clean" ]] || say_fail "$md:$line broken relative link: $target"
done < <(rg -n -o --replace '$1' '\[[^]]+\]\(([^)]+)\)' --glob '*.md' . || true)

if rg -n '(drive\.google\.com/drive/folders/[A-Za-z0-9_-]{10,}|docs\.google\.com/document/d/[A-Za-z0-9_-]{10,}|BEGIN (RSA|OPENSSH|EC) PRIVATE KEY|AIza[0-9A-Za-z_-]{20,}|gh[pousr]_[A-Za-z0-9]{20,})' . --glob '!scripts/validate_content.sh'; then
  say_fail "private Drive identifier, private key, or credential-like value found"
fi

while IFS= read -r text_file; do
  iconv -f UTF-8 -t UTF-8 "$text_file" 2>/dev/null | wc -c >/dev/null || say_fail "$text_file is not valid UTF-8"
done < <(find . -type f \( -name '*.md' -o -name '*.csv' -o -name '*.tsv' \))

if [[ "$fail" -ne 0 ]]; then
  exit 1
fi

echo "PASS: $unit_count unique units, required samples, statuses, relative links, and privacy patterns"
