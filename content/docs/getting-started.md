---
title: Getting started
description: Install WhoMail and connect your first email account.
weight: 10
---

## Install WhoMail

WhoMail runs on **iPhone, iPad, Mac and Android**. Install it on each
device you use — accounts are set up per device. Credentials stay in
that device's keychain (Apple) or Android Keystore; they are never
copied between devices by WhoMail.

## Add your first account

1. Open WhoMail. On first launch the welcome screen takes you to
   **Add Account**. Later, use **Add account** on the Mail tab.
2. Choose your provider and sign in.

Your first account is free. Adding a second account requires
[WhoMail Pro](../pro/).

WhoMail connects these providers:

| Tile | How you sign in |
|---|---|
| **Outlook** | Microsoft's own sign-in sheet (work, school, Outlook.com, Hotmail) |
| **iCloud** | App-specific password from Apple |
| **Fastmail** | Fastmail app password |
| **Yahoo** | Yahoo app password |
| **IMAP** | Password or app password, plus the server host |

There is no Gmail tile. Google sign-in was removed; WhoMail does not
offer a Gmail OAuth path.

### Outlook and Microsoft 365

Choose **Outlook**, then sign in with your Microsoft account. Your
password is never typed into WhoMail itself.

Outlook accounts get the deepest integration: server-side search,
calendar sync via Microsoft Graph, meeting invite responses and
automatic replies (out-of-office).

### iCloud

You'll need an **app-specific password**, not your Apple ID password:

1. Go to [account.apple.com](https://account.apple.com) → Sign-In and
   Security → App-Specific Passwords.
2. Create one named "WhoMail" and paste it into WhoMail.

WhoMail uses Apple's mail servers — you do not enter an IMAP host.

### Fastmail

Create an app password in Fastmail Settings → Privacy & Security →
Integrations. Custom domains that stay on Fastmail still use the
**Fastmail** tile; WhoMail talks to Fastmail's servers and does not
ask for a host.

### Yahoo

Create a Yahoo app password in Account Security, then choose
**Yahoo**. WhoMail uses Yahoo's mail servers — you do not enter a host.

### Custom IMAP

Choose **IMAP** for any other server (or a host that is not Fastmail,
iCloud, Yahoo, or Outlook). Enter the email address, password or app
password, and the IMAP server. WhoMail derives the usual SMTP host
from the IMAP hostname.

Type an iCloud, Fastmail or Yahoo address on the IMAP screen and
WhoMail switches you to that provider's branded panel automatically.

## Instant Push (on by default)

Instant Push is included for **everyone**, including the free tier.
For Outlook, Microsoft notifies WhoMail's relay that the mailbox
changed. For iCloud, Fastmail, Yahoo and custom IMAP, the app password
is uploaded to the relay, encrypted, so new-mail alerts can arrive
when the app is closed. Mail bodies are never stored on the relay.

Turn Instant Push off any time in **Settings → Accounts →
Notifications & Sounds**. See [Notifications](../notifications/).

## Choose how much mail to sync

By default WhoMail syncs **12 months** of regular folders (Inbox,
Sent, Drafts, labels) so search and reading work offline. Change the
window per account in **Settings → Accounts**: 3 months, 6 months,
1 year, or All.

Archive, Trash and Junk stay capped at the most recent messages
regardless of that window.

## Update a password

When a mailbox rejects the saved password, WhoMail shows **Update
password** — a dedicated screen, not Add Account. The email address is
shown as a caption; you only enter the new app password (or sign in
with Microsoft again). Mail already on the device stays there.

See [How to → Update a password](../how-to/#update-a-password).

## Remove an account

Removal lives on the **Mail** tab, not in Settings:

- **iPhone / iPad / Android:** swipe the account left.
- **Mac:** right-click the account in the sidebar.

That deletes local mail for the account, clears stored credentials,
and asks the relay to drop Instant Push for that mailbox.

## Next steps

- [How to — common tasks](../how-to/)
- [Read and organise your inbox](../inbox/)
- [Turn on (or off) instant notifications](../notifications/)
