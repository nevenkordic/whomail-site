---
title: Writing and sending
description: Compose, signatures, attachments, drafts, and scheduling a send.
weight: 30
---

## Composing

Tap the compose button anywhere to start a new message. The composer
supports rich text — bold, italics, lists, links — plus Cc and Bcc,
and quotes the original when you reply or forward.

The compose toolbar shows the word **Send**. After a successful send,
WhoMail shows **Message sent** above the tab bar / reading pill.

Set the compose body size in **Settings → Compose → Font**
(12–28 pt). It applies the next time you open the composer.

## Signatures

Signatures are **per account**, not one global block. Open
**Settings → Accounts** → the account → **Signature**. Rich
formatting is supported. The signature is appended automatically to
new messages and replies.

## Attachments

Attach files with the paperclip (on Android: attach file or attach
image). On Mac you can drag files from Finder into the compose
window.

Attachments send on **every** provider — Outlook, iCloud, Fastmail,
Yahoo and custom IMAP — including when you reply with a file.
Providers cap the on-the-wire size:

| Provider | Approximate limit |
|---|---|
| iCloud | 20 MB |
| Outlook, Yahoo, custom IMAP | 25 MB |
| Fastmail | 50 MB |

Outlook uses Microsoft Graph (and an upload session if the message is
too large to send inline). IMAP-family accounts send via SMTP. If
send fails, the draft and its attachments are kept.

## Send later

Send Later is a [WhoMail Pro](../pro/) feature.

The **Send** button is also a menu: tap it to send now, or hold it
(click-and-hold on Mac) to choose **Send Later** with a preset —
this evening, tomorrow morning, next week.

Scheduled messages wait in the **Outbox** under the account on the
Mail tab (sidebar on iPad and Mac). From there you can edit, send
immediately, or cancel.

> Scheduling happens on your device, not on a server — WhoMail never
> uploads your drafts to send them later. The trade-off: a scheduled
> message goes out the next time the app is open at or after the
> scheduled time.

Send Later works with **every** provider and with attachments.

## Drafts and Send

A message you have not sent yet can be sent from two places:

- The account's **Drafts** folder — reading bar shows **Send** and
  **Edit** (compose opens as an edit, not a reply).
- **Drafts on this device** — **Send** next to Delete.

See [Reading → Drafts](../inbox/#drafts).

## Automatic replies (out of office)

For Outlook and Microsoft 365 accounts, set automatic replies in
**Settings → Accounts** → the account → **Automatic Replies** —
separate messages for people inside and outside your organisation,
and an optional time window.
