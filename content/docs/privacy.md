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

## The short version

Your mail is yours. WhoMail syncs it from your provider to your device,
stores it there, and processes it there. There is no WhoMail cloud that
mirrors your mailbox, no analytics profile, and no AI service reading
your messages.

## On your device

- Messages are stored in a local database on each device.
- Credentials — OAuth tokens and app passwords — live in the Apple
  keychain, protected by device encryption.
- Search indexing, rule processing, invitation parsing and notification
  previews are all computed on-device.

## What touches WhoMail's servers

WhoMail operates one small service: the push relay that makes instant
notifications possible. It is deliberately blind:

- **Push payloads contain no mail content.** The relay tells your
  device "you have new mail"; your device fetches the actual message
  from your provider and builds the banner locally.
- **Outlook accounts:** the relay holds no credentials. Microsoft
  notifies it that a mailbox changed — that's the entire signal.
- **IMAP accounts with Instant Push enabled:** the relay stores that
  account's app password, encrypted, so it can poll the mailbox for
  new-mail counts. It reads mailbox state, not messages.
- **Deleting is immediate:** removing an account from WhoMail, or
  switching Instant Push off, deletes the stored credential from the
  relay.

If you prefer that nothing about an account ever touches the relay,
turn Instant Push off for it — everything else in WhoMail works
unchanged.

## Sign-in

Microsoft and Google accounts sign in through those providers' own
official sheets (OAuth). WhoMail never sees those passwords. IMAP
providers use app passwords, which you can revoke at the provider at
any time without changing your real password.

## Advertising

WhoMail does not include advertising. There is no advertising SDK, no
banner or video ads, and WhoMail does not use the device advertising
identifier. WhoMail Pro is an optional in-app purchase. Mail you
receive may contain promotional content from senders; that is the
sender's message, not WhoMail advertising.

## Questions

Write to [hello@whomail.com.au](mailto:hello@whomail.com.au) — privacy
questions answered by a human.
