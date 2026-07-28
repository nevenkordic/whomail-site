# WhoMail website

Marketing site + user manual for the WhoMail iOS/macOS app, built with
[Hugo](https://gohugo.io). No external theme — layouts and CSS live in
this repo and the site has zero runtime dependencies (system fonts,
no CDNs, no JS).

## Run locally

```bash
hugo server          # http://localhost:1313
```

## Build for deployment

```bash
hugo --gc            # output in public/
```

`baseURL` in `hugo.toml` is set to https://whomail.com.au/ — change it
if the site will live elsewhere.

## Layout

- `layouts/home.html` — landing page (hero email card, features-as-inbox,
  pricing, download)
- `layouts/docs/` — user manual templates (sidebar + article + pager)
- `content/docs/*.md` — manual chapters, ordered by `weight`
- `assets/css/main.css` — all styling; brand coral `#cc4540` matches the
  app's AccentColor

## Editing the manual

Add a chapter by dropping a new `.md` file in `content/docs/` with
front matter:

```yaml
---
title: Chapter name
description: One-line summary shown in the chapter list.
weight: 110   # controls sidebar order
---
```
