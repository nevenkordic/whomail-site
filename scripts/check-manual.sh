#!/usr/bin/env bash
# Regression gate for the public manual. Fails if a shipped feature
# chapter is missing, or if the copy regresses to Gmail-as-a-provider
# / Instant-Push-as-Pro-only (both outdated as of 2026).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DOCS="$ROOT/content/docs"

fail() { echo "check-manual: $*" >&2; exit 1; }

required_chapters=(
  getting-started
  how-to
  inbox
  compose
  notifications
  calendar
  insights
  contacts
  rules
  search
  pro
  privacy
  troubleshooting
)

for chapter in "${required_chapters[@]}"; do
  [[ -f "$DOCS/$chapter.md" ]] || fail "missing chapter content/docs/$chapter.md"
done

search_roots=("$DOCS" "$ROOT/layouts/home.html" "$ROOT/hugo.toml")

in_manual() {
  grep -R -q -- "$1" "${search_roots[@]}"
}

# Gmail OAuth was removed. Mentioning that there is no Gmail tile is
# fine; offering Gmail as a current sign-in path is not.
if grep -R -E -q 'Choose \*\*Gmail\*\*|sign in with Google' "${search_roots[@]}"; then
  fail "manual still documents Gmail as a sign-in provider"
fi
if grep -R -E -q 'Gmail, iCloud|Outlook, Gmail|Microsoft 365, Gmail' "${search_roots[@]}"; then
  fail "manual still lists Gmail next to current providers"
fi

# Instant Push is free. Pro gates are accounts / Insights / snooze /
# Send Later.
if grep -R -i -E -q 'instant push is a \[(Who)?Mail Pro|instant push.{0,20}Pro feature' "${search_roots[@]}"; then
  fail "manual still describes Instant Push as a Pro feature"
fi

needles=(
  "Yahoo"
  "Android"
  "People Lens"
  "Load once"
  "Update password"
  "Group by Conversation"
  "Lifetime"
  "Send Later"
  "App Lock"
  "has:attachment"
)

for needle in "${needles[@]}"; do
  in_manual "$needle" || fail "manual is missing required mention: $needle"
done

# How-to must stay a task index, not an empty stub.
howto_bytes="$(wc -c < "$DOCS/how-to.md" | tr -d ' ')"
[[ "$howto_bytes" -gt 2000 ]] || fail "how-to.md looks too short to be a real guide ($howto_bytes bytes)"

echo "check-manual: ok (${#required_chapters[@]} chapters, claims pinned)"
