# WhoMail website

Marketing site + user manual for WhoMail (iPhone, iPad, Mac and
Android), built with [Hugo](https://gohugo.io). No external theme —
layouts and CSS live in this repo and the site has zero runtime
dependencies (system fonts, no CDNs, no JS).

## Run locally

```bash
./scripts/check-manual.sh   # required chapters + stale-claim pins
hugo server                 # http://localhost:1313
```

## Build and deploy

This site is **not** a Cloudflare Pages project. It is served as static
assets by the `whomail` Worker that also runs the push relay — one
Worker, one domain. The Worker lives in the **app** repo, at
`~/whomail-ios/push-relay/`, and serves `push-relay/public/`
(`[assets]` in its `wrangler.toml`, which is gitignored there).

So deploying the site means: build here, copy the output into the
relay's `public/`, deploy the Worker.

```bash
hugo --gc --minify                                   # output in public/
rsync -a public/ ~/whomail-ios/push-relay/public/    # no --delete: old
                                                     # hashed CSS stays
                                                     # for cached pages
cd ~/whomail-ios/push-relay && npx wrangler deploy
```

`--minify` matters: without it every page differs from what's deployed
and you can't tell a real content change from whitespace.

Verify afterwards — the app links the privacy policy, and a 404 there is
an App Store rejection (guideline 3.1.2(c)):

```bash
curl -sI https://whomail.com.au/docs/privacy/ | head -1   # must be 200
```

Cloudflare caches aggressively; a path that used to 404 can serve a
stale negative for a minute or two after deploy.

`baseURL` in `hugo.toml` is set to https://whomail.com.au/ — change it
if the site will live elsewhere.

## Layout

- `layouts/home.html` — landing page (hero email card, features-as-inbox,
  pricing, download)
- `layouts/docs/` — user manual templates (sidebar + article + pager)
- `content/docs/*.md` — manual chapters, ordered by `weight`
  (`how-to.md` is the task index)
- `scripts/check-manual.sh` — fails if a chapter is missing or the
  copy regresses (Gmail-as-provider, Instant-Push-as-Pro)
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
