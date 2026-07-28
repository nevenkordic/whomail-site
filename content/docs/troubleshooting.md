---
title: Troubleshooting
description: Fixes for the problems people actually hit.
weight: 100
---

## Notifications aren't arriving

Work down this list:

1. **Permission** — Settings app → WhoMail → Notifications → make sure
   Allow Notifications is on.
2. **Master switch** — in WhoMail, Settings → Notifications & Sounds →
   Notify on new mail, and check the per-account toggle below it.
3. **Pro** — instant push is a Pro feature; confirm your subscription
   is active in Settings → WhoMail Pro.
4. **Re-register** — Settings → Push Diagnostics shows the full chain:
   device token, relay registration, subscription status and the last
   push received. Tap **Re-register** to rebuild it.
5. **Wearing an Apple Watch?** Apple sends each banner to exactly one
   device — a locked iPhone plus a worn Watch means the Watch gets it.

## Mail seems to be missing

- Check the account's other folders — a [mail rule](../rules/) may have
  filed or flagged it. Rules move to Trash rather than deleting, so
  check Trash too.
- Check your sync window (Settings → Accounts). Mail older than the
  window isn't kept on the device, but
  [server search](../search/#server-search) can still find it.

## "Syncing…" seems stuck

A first sync of a large mailbox legitimately takes a while — WhoMail is
downloading headers and recent bodies for offline use. If a sync seems
stuck long after that, force-quit and relaunch the app; sync resumes
from where it left off.

## An account keeps asking me to sign in

- **OAuth accounts (Outlook, Gmail):** your organisation may enforce a
  sign-in frequency; re-authenticate when prompted.
- **IMAP accounts:** the app password may have been revoked at the
  provider. Create a new one and update it in Settings → Accounts.

## A scheduled message didn't send

Send Later delivers from your device: the message goes out the next
time WhoMail is open at or after the scheduled time. Check the
**Outbox** — you can send it immediately from there.

## Still stuck?

Email [hello@whomail.com.au](mailto:hello@whomail.com.au) with what you
expected, what happened, and a screenshot if you can — it all goes to a
human who works on the app.
