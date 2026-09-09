---
title: Troubleshooting
description: Fixes for the problems people actually hit.
weight: 100
---

## Notifications aren't arriving

Work down this list:

1. **Permission** — iPhone Settings → WhoMail → Notifications
   (or Android Settings → Apps → WhoMail → Notifications) →
   allow notifications.
2. **Master switch** — in WhoMail, Settings → Accounts →
   Notifications & Sounds → Notify on new mail, and the
   per-account toggle below it.
3. **Instant Push** — on by default and included for free. For
   iCloud / Fastmail / Yahoo / IMAP, confirm Instant Push is still
   on for that account.
4. **Re-register** — Settings → Push Diagnostics shows the full
   chain: device token, relay registration, subscription status
   and the last push received. Tap **Re-register** to rebuild it.
5. **Wearing an Apple Watch?** Apple sends each banner to exactly
   one device — a locked iPhone plus a worn Watch means the Watch
   gets it.

## Mail seems to be missing

- Check the account's other folders — a [mail rule](../rules/) may
  have filed or flagged it. Rules move to Trash rather than
  deleting, so check Trash too.
- Check your sync window (Settings → Accounts). Mail older than
  the window isn't kept on the device, but
  [server search](../search/#server-search) can still find it on
  Outlook.
- Turn off **Group by Conversation** if you expected every
  message as its own row.

## "Syncing…" seems stuck

A first sync of a large mailbox legitimately takes a while —
WhoMail is downloading headers and recent bodies for offline use.
If a sync seems stuck long after that, force-quit and relaunch;
sync resumes from where it left off.

**Settings → General** shows the last successful refresh per
account and how often the app polls while it is open (default
every 25 seconds). Pull-to-refresh still works at any time.

## An account keeps asking me to sign in

Tap **Update password** — that screen is only for reconnecting
the same mailbox. The address is a caption; you type the new
password (or sign in with Microsoft). Mail already on the device
stays.

- **Outlook:** your organisation may enforce a sign-in frequency;
  complete Microsoft's sheet when prompted.
- **iCloud / Fastmail / Yahoo / IMAP:** the app password may have
  been revoked. Create a new one at the provider and paste it.
  Use the app password, not your normal login password.

Do not use **Add Account** to fix this — that would try to add a
second mailbox.

## A scheduled message didn't send

Send Later delivers from your device: the message goes out the
next time WhoMail is open at or after the scheduled time. Check
the **Outbox** under that account — you can send it immediately
from there.

## A draft didn't send

Open **Drafts** (the server folder) or **Drafts on this device**.
Both expose **Send**. If it fails again, WhoMail keeps the draft
and shows **Couldn't send — draft kept**. Large attachments can
hit the provider's size cap (iCloud 20 MB, Fastmail 50 MB,
others ~25 MB).

## Locked out of WhoMail

On the lock screen, **Forgot PIN?** can unlock with the device
passcode, or wipe local mail if you choose that path. Mail still
on the server is not deleted.

## Still stuck?

Email [hello@whomail.com.au](mailto:hello@whomail.com.au) with
what you expected, what happened, and a screenshot if you can —
it all goes to a human who works on the app.
