---
title: Calendar and invitations
description: Meeting invites, RSVPs, events, tasks, and holiday calendars.
weight: 50
---

## The Calendar tab

WhoMail includes a calendar with month, week and day views (month is
the default). Create items with **New Event**, **New Meeting** or
**New Task**.

- **Outlook / Microsoft 365** calendars sync via Microsoft Graph
  (including Microsoft To Do tasks in day view).
- **Fastmail, iCloud, Yahoo and custom IMAP** calendars sync via
  CalDAV when the server is reachable.
- If a mailbox has no server calendar, WhoMail keeps a **local
  calendar on this device** — those events are not uploaded.

## Settings

**Settings → Calendar**:

- **Show calendars** — hide calendars you don't want in the view.
- **New events** — which account's calendar is the default.
- **Week start** — Sunday, Monday or Saturday (this device only).
- **Australian Holidays** — Easter, ANZAC Day, Christmas, and
  state-specific dates. Pick a state or territory (NSW, VIC, QLD,
  and so on). Local only.
- **US Holidays** — the 11 US federal holidays. Local only.

Built-in holiday calendars are always on-device. They are not
uploaded to Outlook or CalDAV.

## Responding to meeting invitations

When a meeting invitation lands in an Outlook inbox, the message
shows an invitation banner with **Accept**, **Tentative** and
**Decline**. Your response is sent to the organiser and the event
appears in (or disappears from) your calendar straight away.

Invitations arriving in IMAP-family accounts (for example a Google
Calendar invite sent to a Fastmail address) are recognised and shown
with an invitation banner too.

## Adding .ics files to your calendar

Tap an `.ics` attachment and choose:

- **Add to WhoMail Calendar** — the event is parsed on-device and
  filed into your synced Outlook calendar, or the local calendar
  otherwise. It shows up in the Calendar tab immediately.
- **Open in Calendar…** — hands the file to the system calendar
  instead.

All-day events, time zones and recurring basics are handled; the
event appears with its title, time and location.

## Automatic replies

Out-of-office for Outlook is under **Settings → Accounts →
Automatic Replies**, not on the Calendar tab. See
[Writing → Automatic replies](../compose/#automatic-replies-out-of-office).
