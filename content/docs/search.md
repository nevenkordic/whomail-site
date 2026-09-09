---
title: Search
description: Finding any message, on the device or on the server.
weight: 70
---

## Searching your mail

Pull down in any message list (or press ⌘F on Mac) and type. Search
covers:

- **Subjects and senders**
- **Recipients** — find "that email I sent to Sam"
- **Full message bodies** — the entire text of every synced
  message, not just the first line

Results appear as you type, ranked by relevance, with a count of
how many matches were found.

The search field says **Search all inboxes** in the unified inbox,
or **Search this account** inside one mailbox.

## Operators

Scope a query with operators. They combine with each other and with
plain words:

| Operator | Meaning |
|---|---|
| `from:alice` | Sender name or address |
| `to:sam` | To or Cc |
| `subject:invoice` | Subject only |
| `body:contract` | Body only |
| `has:attachment` | Messages with attachments |
| `is:unread` / `is:read` | Read state |
| `is:flagged` | Flagged / starred |
| `before:2026-01-01` | Sent before that date |
| `after:2026-01-01` | Sent on or after that date |
| `"exact phrase"` | Phrase match |
| `-term` | Exclude |

Unknown `something:value` tokens are treated as plain text, so a
time or a URL with a colon does not break the query.

## Server search

For Outlook and Microsoft 365 accounts, WhoMail also searches your
mailbox on the server — including mail older than your device's
sync window and in folders you haven't opened. Server results
appear below local results with a "Searching server…" indicator
while they load.

If you used an operator above, the search stays **on-device only**
— Microsoft's server search does not understand WhoMail's
operator syntax.

## Tips

- Search works offline for everything already synced to the device.
- Widen an account's sync window (**Settings → Accounts**) to make
  more of your history searchable offline.
