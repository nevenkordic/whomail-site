---
title: How to
description: Short answers for the tasks people actually do.
weight: 15
---

Jump here when you already know what you want. Each task is a few
steps; the linked chapters have the full picture.

## Accounts

### Add an Outlook account

1. Mail tab → **Add account** → **Outlook**.
2. Sign in on Microsoft's sheet.
3. Wait for the first sync.

[Getting started → Outlook](../getting-started/#outlook-and-microsoft-365)

### Add iCloud, Fastmail or Yahoo

1. Mail tab → **Add account** → the matching tile.
2. Create an **app password** at the provider (not your normal login
   password).
3. Paste it into WhoMail. You do not enter a server host.

[Getting started](../getting-started/)

### Add a custom IMAP server

1. Mail tab → **Add account** → **IMAP**.
2. Enter the address, password or app password, and IMAP host.

If you type an iCloud, Fastmail or Yahoo address, WhoMail switches
you to that provider's panel.

### Update a password

1. Tap **Update password** on the account banner (or open the account
   when WhoMail asks you to reconnect).
2. Enter the new **app password**, or tap **Sign in with Microsoft**
   for Outlook.
3. Existing mail stays on the device. Hosts, display name and Instant
   Push settings are not on this screen.

[Troubleshooting](../troubleshooting/#an-account-keeps-asking-me-to-sign-in)

### Remove an account

- **Phone:** Mail tab → swipe the account left → Remove.
- **Mac:** right-click the account in the sidebar → Remove.

Do not look for Remove in Settings — it is not there.

## Reading and filing

### Open a message and reply

1. Tap the message.
2. The reading bar has a filled **Reply**. The chevron next to it is
   **Reply all** and **Forward**.
3. **Flag** and **Delete** sit beside Reply. **More actions** holds
   Move and Snooze.

After you send, WhoMail shows **Message sent** above the tab bar.

[Reading and organising](../inbox/)

### Show the full From / To / Cc

Tap the sender line on the message (**Show sender details**). Tap
**View sender** to open their Insights profile.

### Load remote images

Remote images and tracking pixels stay blocked until you opt in. On
the privacy bar:

- **Load once** — this message only.
- **Always from this sender** — remember that address.

[Reading → Remote images](../inbox/#remote-images)

### Group by conversation

In any inbox, open the list menu and turn on **Group by Conversation**.
Threads collapse to one row; tap to expand.

### Swipe a message

Defaults:

- **Swipe from the right:** Archive (full swipe) and Delete.
- **Swipe from the left:** Flag and Mark Read.

Change the four slots in **Settings → Swipe Actions**. Choices are
Delete, Archive, Flag, Mark Read and Move.

### Move to a folder

Open the message → **More actions** → **Move to folder**, or assign
Move as a swipe.

### Snooze a message (Pro)

1. Long-press the row (right-click on Mac), or **More actions →
   Snooze** on the open message.
2. Pick a time. The message leaves the inbox and badge until then.

Find everything snoozed under the account on the Mail tab
(**Snoozed**), or in the sidebar on iPad and Mac.

### Send a draft

There are two Drafts places:

- **Drafts folder** (on the server) — the reading bar shows **Send**
  instead of Reply. Tap Send, or **Edit** to change it first.
- **Drafts on this device** (failed or unfinished compose) — **Send**
  sits next to Delete.

If send fails, WhoMail keeps the draft and shows **Couldn't send —
draft kept**.

[Writing and sending](../compose/)

## Writing

### Compose a new message

Tap the compose button. Add Cc/Bcc, attach files (paperclip; drag
from Finder on Mac), then **Send**.

### Change your signature

**Settings → Accounts** → the account → **Signature**. Rich text is
supported. The signature is appended to new messages and replies.

### Send later (Pro)

Hold **Send** (click-and-hold on Mac) → **Send Later** → a preset
(this evening, tomorrow morning, next week).

Scheduled messages wait in **Outbox** on the Mail tab. They send the
next time WhoMail is open at or after that time — scheduling is
on-device, not on a server. Works with every provider, including
messages that have attachments.

### Set out-of-office (Outlook)

**Settings → Accounts** → the Outlook account → **Automatic
Replies**. Separate inside / outside messages and an optional window.

## Notifications

### Turn Instant Push on or off

Instant Push is **free** and on by default.

1. **Settings → Accounts** → the account → **Notifications & Sounds**.
2. Use the master **Notify on new mail** switch, the per-account
   toggle, and **Instant Push** (IMAP-family accounts).

[Notifications](../notifications/)

### Act from a banner

**Mark as Read**, **Delete** and **Reply** work without opening the
app. The push itself carries no mail content; your device fetches the
preview from the mailbox.

## Calendar, Insights, Contacts

### Accept a meeting invite

Open the invitation → **Accept**, **Tentative** or **Decline** on the
banner. Outlook responses go to the organiser. `.ics` attachments
offer **Add to WhoMail Calendar** or **Open in Calendar…**.

[Calendar](../calendar/)

### Create an event, meeting or task

Calendar tab → **New Event**, **New Meeting** or **New Task**. The
default calendar is set in **Settings → Calendar**.

### Turn on holiday calendars

**Settings → Calendar** → Australian Holidays (pick a state /
territory) or US Holidays. These calendars stay on the device.

### See who you mail the most

Open the **Insights** tab. Summary and the activity heatmap are
visible to everyone; the full ranked people list and rich profiles
are [WhoMail Pro](../pro/). Tap a person for Timeline, Conversations,
Files, Network, Links, Notes and Info.

[Insights](../insights/)

### Find a contact

**Contacts** tab. Filter People vs Services, search, sort, group by
company, or tap a tag chip. Open someone for Info and Notes.

[Contacts](../contacts/)

## Rules, search, Pro, privacy

### File newsletters automatically

**Settings → Rules** → **Add Rule**. Match sender or subject, then
Move, Mark read, Flag or Delete. Rules run on **new mail only**,
oldest-first; the first match wins.

[Mail rules](../rules/)

### Search with operators

Pull down in a list (⌘F on Mac) and type. Useful operators:

```
from:alice
to:sam
subject:invoice
has:attachment
is:unread
is:flagged
after:2026-01-01
"exact phrase"
-unsubscribe
```

Operators stay on-device (they do not go to Outlook server search).

[Search](../search/)

### Subscribe to Pro

**Settings → WhoMail Pro**, or when you add a second account, snooze,
or send later. Monthly, annual (7-day trial) or a one-time Lifetime
purchase. Use **Restore Purchases** on a new device.

[WhoMail Pro](../pro/)

### Lock the app

**Settings → Privacy & Security** → **Lock WhoMail**. Choose Face ID /
Touch ID / biometrics or a 4- or 6-digit WhoMail PIN. Mail still
syncs while locked. Timeouts: immediately, 1 minute (default), 5 or
15 minutes.

[Privacy](../privacy/#app-lock)

### Stop Spotlight or Siri seeing mail

Those switches are **off by default**. If you turned them on,
**Settings → Privacy & Security** turns them off again. WhoMail's
own search still works.

### Export or restore a backup

**Settings → Backup**. Export copies the local database (not
credentials). Restore replaces the database — quit and reopen
WhoMail afterwards. On Mac this is the usual way to move to a new
computer.
