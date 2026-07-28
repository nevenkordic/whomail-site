---
title: Notifications and instant push
description: How new-mail alerts work, how fast they arrive, and what leaves your device.
weight: 40
---

## What to expect

| Situation | New mail arrives in |
|---|---|
| App open (foreground) | Seconds |
| App closed or in background | About 60–90 seconds |

While the app is open, WhoMail holds a live connection to your mail
server (IMAP IDLE), so new mail appears almost immediately. When the
app is closed, WhoMail's push relay notices new mail and sends a push
notification to your iPhone or iPad.

Instant push is a [WhoMail Pro](../pro/) feature.

## Acting from the banner

Notification banners show the sender, subject and a preview, and offer
three actions without opening the app: **Mark as Read**, **Delete**,
and **Reply**.

## What the push contains — and what it doesn't

The push notification itself says only "new mail" — no sender, no
subject, no content. When it arrives, your device fetches the details
directly from your mailbox and builds the rich banner locally. The
relay never sees your messages.

For Outlook accounts, the relay holds no credentials at all — Microsoft
notifies it that something changed, nothing more. For IMAP accounts,
enabling instant push stores that account's app password with the
relay, encrypted, so it can check your mailbox for new mail. Removing
the account from WhoMail, or turning instant push off, deletes that
credential from the relay immediately.

## Turning things on and off

- **Master switch:** Settings → Notifications & Sounds → Notify on new
  mail.
- **Per account:** each account has its own toggle in the same screen.
- **Instant Push (IMAP accounts):** on by default; turn it off per
  account if you'd rather WhoMail never stores that password with the
  relay. You'll still get mail when the app checks in the foreground.

## On the Mac

New-mail alerting is delivered to your iPhone and iPad. The Mac app
keeps itself current with a live connection while it's running, and
enabling instant push on the Mac registers the mailbox so pushes reach
your iPhone.

## One banner, one device

Apple delivers each notification to exactly one device: if your iPhone
is locked and you're wearing an Apple Watch, the banner goes to the
Watch. That's an Apple platform rule, not a WhoMail setting.

If notifications aren't arriving, see
[Troubleshooting](../troubleshooting/).
