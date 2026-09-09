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
server (IMAP IDLE) and polls on a short timer, so new mail appears
almost immediately. When the app is closed, WhoMail's push relay
notices new mail and sends a push to your iPhone, iPad or Android
phone.

**Instant Push is included for free.** It is on by default. You do
not need WhoMail Pro for closed-app alerts.

## Acting from the banner

Notification banners show the sender, subject and a preview, and
offer three actions without opening the app: **Mark as Read**,
**Delete**, and **Reply**.

## What the push contains — and what it doesn't

The push notification itself says only "new mail" — no sender, no
subject, no content. When it arrives, your device fetches the details
directly from your mailbox and builds the rich banner locally. The
relay never sees your messages.

- **Outlook:** the relay holds no credentials. Microsoft notifies it
  that something changed, nothing more.
- **iCloud, Fastmail, Yahoo and custom IMAP:** enabling Instant Push
  stores that account's app password with the relay, encrypted, so
  it can check the mailbox for new mail. It reads mailbox state, not
  message bodies.

Removing the account, or turning Instant Push off, deletes that
credential from the relay immediately.

Apple devices register an APNs token; Android registers an FCM token.
The relay's job is the same on both: wake the device so *it* can
talk to your provider.

## Turning things on and off

- **Master switch:** Settings → Accounts → Notifications & Sounds →
  Notify on new mail (also reflected under Settings → General).
- **Per account:** each account has its own toggle on that screen.
- **Instant Push (IMAP-family accounts):** on by default; turn it off
  per account if you'd rather WhoMail never store that password with
  the relay. You'll still get mail when the app is open.

## On the Mac

New-mail banners are delivered to your iPhone and iPad. The Mac app
keeps itself current with a live connection while it's running, and
enabling Instant Push on the Mac registers the mailbox so pushes
reach your phone.

## One banner, one Apple device

Apple delivers each notification to exactly one device: if your
iPhone is locked and you're wearing an Apple Watch, the banner goes
to the Watch. That's an Apple platform rule, not a WhoMail setting.

If notifications aren't arriving, see
[Troubleshooting](../troubleshooting/).
