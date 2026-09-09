---
title: Reading and organising mail
description: The unified inbox, reading bar, swipe, snooze, drafts, and remote images.
weight: 20
---

## The unified inbox

**All Inboxes** shows new mail from every account in one list. Tap an
account on the Mail tab (phone) or in the sidebar (iPad and Mac) to
see that mailbox's folders instead.

Unread messages are marked with a coral dot. The app badge counts
unread inbox mail across your active accounts.

On the phone, each account also lists **Snoozed**, **Outbox** and
**Drafts on this device** under its folders. On iPad and Mac those
buckets live in the sidebar. The **More** tab is Settings only.

## Reading a message

The message body renders on a **paper card** that follows the app
theme: white paper in light mode, dark paper in dark mode. WhoMail
pins the web view to that paper so newsletters cannot paint opaque
bars or turn their own text invisible.

Tap the sender line to **Show sender details** — full From, Reply-To,
To and Cc. **View sender** opens their [Insights](../insights/)
profile.

Links open in your browser. Attachments preview in place; tap to save
or share them. Meeting invites show Accept / Tentative / Decline on
the message — see [Calendar](../calendar/).

### The reading bar

The bar is Outlook-style, not a row of equal icons:

| Control | What it does |
|---|---|
| **Reply** (filled) | Reply to the sender. The chevron is **Reply all** and **Forward**. |
| **Flag** | Flag or unflag. |
| **Delete** | Move to Trash. |
| **More actions** | **Move to folder** and **Snooze**. |

Archive is not on the reading bar (use swipe or a folder). After you
send a reply, WhoMail shows **Message sent** above the tab bar.

If the message is in the account's **Drafts** folder, the bar shows
**Send** and **Edit** instead of Reply — see [Drafts](#drafts).

## Remote images

Remote images, stylesheets and tracking pixels are **blocked by
default**. When a message needs them, a privacy bar says "Remote
images blocked to protect your privacy":

- **Load once** — this message only.
- **Always from this sender** — remember that address for next time.

Scripts in HTML mail never run, even after you load images.

## Group by conversation

Open the inbox menu and choose **Group by Conversation**. Related
messages collapse to one row; tap the row to expand the thread.

## Swipe actions

Swipe a row to act without opening it. Defaults match iOS Mail:

- **From the right:** Archive (full-swipe) and Delete.
- **From the left:** Flag and Mark Read.

Change any slot in **Settings → Swipe Actions**. Each edge has a
primary (full-swipe) and a secondary button. Available actions:
Delete, Archive, Flag, Mark Read, Move.

On Mac, right-click a row for the same actions plus Snooze.

## Move to folder

Open a message → **More actions** → **Move to folder**, or swipe with
Move assigned. You can file into any folder in that account.

## Snooze

Snooze is a [WhoMail Pro](../pro/) feature.

Not ready to deal with a message? Long-press it (right-click on Mac)
or use **More actions → Snooze**. Snoozed mail disappears from the
inbox and the badge until the time you picked, then returns with a
reminder.

Find everything you've snoozed in **Snoozed** under the account on
the Mail tab (sidebar on iPad and Mac). Un-snooze early from there.

## Deleting

Deleted messages move to the account's Trash — they are not
permanently erased until the server clears them or you empty Trash.

## Drafts

Two places, both of which can **Send**:

**Mailbox Drafts** (Outlook / iCloud / Fastmail / Yahoo / IMAP
Drafts folder) stay in sync across devices. Open one and the reading
bar shows **Send** instead of Reply. **Edit** opens compose so you
can change it first.

**Drafts on this device** holds local copies — unfinished compose or
a send that failed. **Send** sits next to Delete. A failed send keeps
the draft and shows **Couldn't send — draft kept**.

Scheduled (Send Later) messages live in the
[Outbox](../compose/#send-later), not in Drafts.

## Select several messages

Use **Select** in the inbox to flag, mark read, move, archive or
delete in bulk. Snooze from a multi-select is Pro-gated like a
single snooze.
