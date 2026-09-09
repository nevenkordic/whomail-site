---
title: Insights and People Lens
description: Who you mail, when you mail them, and the person profile.
weight: 55
---

## The Insights tab

Insights is on-device analytics over mail you have already synced.
Nothing is uploaded to WhoMail for this. How far back it goes is
the same [sync window](../getting-started/#choose-how-much-mail-to-sync)
as the rest of the app.

The home screen has three blocks:

- **Summary** — volume, sent vs received, peak hours, median reply
  time, reply ratio, and how many people you actually mail.
- **Activity** — a 7×24 heatmap of when mail moves. Tap a cell to
  see that slice.
- **Top relationships** — people ranked by how much you write to
  each other.

Free accounts see Summary, the heatmap, and the **top two** people.
[WhoMail Pro](../pro/) unlocks the full ranked list and the rich
person profile.

Pull to refresh, or tap Refresh (⌘R on Mac).

## Open a person

Tap a row. The profile opens on **Timeline** with the header
expanded (**Hide details** collapses the strength and counts).

Chips along the top — they scroll, so titles stay readable:

| Chip | What's on it |
|---|---|
| **Timeline** | Mail with this person, newest first (the default). |
| **Conversations** | Threads, not a second inbox. |
| **Files** | Attachments you've exchanged. |
| **Network** | People who appear with them. |
| **Links** | URLs pulled from the correspondence. |
| **Notes** | Your private notes — they never leave the device. |
| **Info** | Name, company, phones, websites, social links. |

**View sender** on a message header opens the same profile.

## People Lens

People Lens is the index behind Insights and Contacts. It runs on
the device: signatures, phones, websites, and how often you write
to someone.

**Settings → People Lens**:

- Turn a mailbox off if you don't want it in the heatmap or top
  contacts. Mail sync is unaffected.
- **Reindex People Lens now** — re-run the signature parser.
- **Reset People Lens data…** — wipe extracted facts and counters.
  Emails and the contacts list stay; reindex to fill them again.

### On-device signature parsing

On Apple devices, **On-device signature parsing** (on by default)
uses Apple Intelligence when that is enabled in System Settings to
pull name, title, company, phone and website from signatures. If
the model is unavailable, WhoMail falls back to the regex
extractor. Turn the switch off to skip the model entirely.

Android uses the same regex extractor, plus the on-device Gemini
Nano path when the device has it.

There is no cloud AI. Signatures are not sent to WhoMail.
