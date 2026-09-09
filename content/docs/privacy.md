---
title: Privacy and security
description: Where your mail lives, what leaves your device, and what never will.
weight: 90
# App Store Connect and older builds link /privacy — keep these alive so
# the policy link in the apps and in store metadata never 404s again
# (App Review rejection bca8495f, guideline 3.1.2(c)).
aliases:
  - /privacy/
  - /privacy-policy/
---

**Last updated:** 9 September 2026  
**Contact:** [hello@whomail.com.au](mailto:hello@whomail.com.au)

WhoMail is a mail client for iPhone, iPad, Mac and Android. This
page is both the privacy policy and the security how-to.

## The short version

Your mail is yours. WhoMail syncs it from your provider to your
device, stores it there, and processes it there. There is no
WhoMail cloud that mirrors your mailbox, no analytics profile, and
no AI service reading your messages.

## On your device

- Messages, attachments, contacts derived from mail, calendars,
  drafts and settings are stored **on the device**.
- Credentials — Microsoft OAuth tokens and IMAP/SMTP app
  passwords — live in the **Apple keychain** or in
  **EncryptedSharedPreferences** backed by the **Android
  Keystore**.
- Search indexing, rule processing, invitation parsing, Insights
  and notification previews are all computed on-device.
- WhoMail does not use cloud AI on your mail. Optional on-device
  models (Apple Intelligence, Gemini Nano) stay on the device; see
  [People Lens](../insights/#on-device-signature-parsing).

### App Lock

**Settings → Privacy & Security → Lock WhoMail** (iPhone and
Android). Choose biometrics (Face ID, Touch ID, or the device
biometric) or a 4- or 6-digit WhoMail PIN. Timeouts: immediately,
1 minute (default), 5 or 15 minutes.

Mail still syncs while the UI is locked. The PIN is stored with
the other secrets on the device. Forgot PIN offers a device
passcode reset or wiping local mail.

### System search and assistants (off by default)

These never run until you turn them on:

- **Allow Apple to index emails** — Spotlight / Apple Intelligence
  may see subject, sender, recipients and a short snippet. Full
  bodies and attachments stay in WhoMail. Turning it off deletes
  that index. WhoMail's own [search](../search/) still works.
- **Allow Siri & Shortcuts to use mail** — they can search and
  open a draft. They cannot send, delete or archive.
- **Allow local agents (MCP)** (Mac only) — binds to
  `127.0.0.1:18765` with a bearer token. Same read-and-draft
  limit. Mail is not uploaded to WhoMail for this.

### Remote images

The reading pane blocks remote images and tracking pixels until
you tap **Load once** or **Always from this sender**. That is a
privacy control, not advertising. HTML in the reading pane is the
sender's message.

## What touches WhoMail's servers

WhoMail operates one small service: the push relay that makes
instant notifications possible. It is deliberately blind:

- **Push payloads contain no mail content.** The relay tells your
  device "you have new mail"; your device fetches the actual
  message from your provider and builds the banner locally.
- **Outlook accounts:** the relay holds no credentials. Microsoft
  notifies it that a mailbox changed — that's the entire signal.
- **IMAP-family accounts with Instant Push enabled** (iCloud,
  Fastmail, Yahoo, custom IMAP; on by default): the relay stores
  that account's app password, encrypted, so it can poll for
  new-mail counts. It reads mailbox state, not messages.
- Device tokens: **APNs** on Apple, **FCM** on Android.
- **Deleting is immediate:** removing an account, or switching
  Instant Push off, deletes the stored credential from the relay.

If you prefer that nothing about an account ever touches the
relay, turn Instant Push off for it — everything else in WhoMail
works unchanged.

## Sign-in

Microsoft accounts sign in through Microsoft's own official sheet
(OAuth). WhoMail never sees that password. iCloud, Fastmail, Yahoo
and custom IMAP use app passwords, which you can revoke at the
provider without changing your real password.

## Advertising

WhoMail does not include advertising. There is no advertising SDK,
no banner or video ads, and WhoMail does not use the device
advertising identifier. WhoMail Pro is an optional in-app
purchase. Mail you receive may contain promotional content from
senders; that is the sender's message, not WhoMail advertising.

## Purchases

Subscriptions and the Lifetime unlock are processed by Apple or
Google. WhoMail does not receive your store account payment
details.

## Account removal

Remove a mailbox via swipe / context menu on the **Mail** tab.
That deletes local mail data for the account, clears stored
credentials, signs out of Microsoft locally where applicable, and
asks the relay to drop device / IMAP registration for that
mailbox.

## Backup

**Settings → Backup** exports the local database and a manifest.
Credentials are **not** included. Restore replaces the database
(the previous file is renamed as a safety net). Quit and reopen
WhoMail after a restore.

## Questions

Write to [hello@whomail.com.au](mailto:hello@whomail.com.au) —
privacy questions answered by a human.
