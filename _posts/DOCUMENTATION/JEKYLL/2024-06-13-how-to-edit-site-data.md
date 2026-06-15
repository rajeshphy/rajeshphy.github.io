---
title: "How To Edit Site Data"
summary: "How to update About, Ref, header contact icons, share icons, and site identity from _data and _config.yml."
date: 2024-06-13 01:00:00 +0530
categories:
  - doc-jekyll
tags:
  - data
  - yaml
  - jekyll
  - documentation
permalink: /how-to-edit-site-data/
---

Some site content is better kept in `_data` instead of being typed directly into a page. This keeps About, Ref, and icon links easy to update without editing layout HTML.

## Site Name

The site name comes from `_config.yml`:

```yaml
title: Rajesh Kumar
author:
  name: Rajesh Kumar
```

The footer, header brand, home hero, and About page use `author.name` first. If it is missing, they fall back to `title`.

## About Page Data

Edit:

```text
_data/about.yml
```

This file controls:

- profile photo and summary
- research papers
- books and selected articles
- experience
- education
- certifications
- skills

Example research paper entry:

```yaml
research_papers:
  - venue: Annals of Physics · Vol. 463 · Article 169623 · 2024
    title: Rationally Extended Harmonic Oscillator Potential
    authors: Rajesh Kumar, Rajesh Kumar Yadav, Avinash Khare
    doi: 10.1016/j.aop.2024.169623
    url: "https://doi.org/10.1016/j.aop.2024.169623"
```

The first research paper is shown directly. Extra papers appear inside the collapsible “More Research Papers” section automatically.

## Ref Page Data

Edit:

```text
_data/ref.yml
```

Each top-level item appears on the Ref page. Use `children` for nested links.

```yaml
items:
  - title: Green's Function - Erik M. Olsen
    url: /assets/pdf/ref/Greens-Function.pdf
    children:
      - title: Scattering Theory - B. Zwiebach
        url: /assets/pdf/ref/Scattering-MIT.pdf
```

Use full URLs for external links:

```yaml
url: "https://example.com/resource.pdf"
```

Use site-relative paths for local assets:

```yaml
url: /assets/pdf/ref/QM-Formulae.pdf
```

If an item has no `url`, it appears as bold non-clickable text. Use this for group labels:

```yaml
items:
  - title: Appendix
    children:
      - title: Fourier Transform
        url: /assets/pdf/ref/appendix/Fourier-Transform.pdf
```

## Header Contact Icons

Edit:

```text
_data/header_icons.yml
```

Example:

```yaml
- name: whatsapp
  label: WhatsApp group
  href: "https://chat.whatsapp.com/example"
  icon: /assets/icons/icon-whatsapp-nav.svg
```

The `href` can be a mail link, normal URL, or group invite link.

## Share Icons

Edit:

```text
_data/share_icons.yml
```

The heading and share buttons are controlled here.

```yaml
heading: Share This Page
icons:
  - name: instagram
    label: Share or copy link for Instagram
    action: copy
    icon: /assets/icons/icon-instagram-share.svg
```

Supported actions are:

- `copy` for copying the current page link
- `facebook` for Facebook sharing
- `whatsapp` for WhatsApp sharing

## When To Use Posts Instead

Use `_posts` for content that should be an article, note, quiz, problem sheet, or dated documentation entry.

Use `_data` for small structured lists that many templates can reuse.

## Small Rules

- Keep `_data` files as valid YAML.
- Quote URLs that contain `:`, `?`, or `&`.
- Use site-relative paths beginning with `/assets/` for local icons, PDFs, and images.
- Keep text content in `_posts` when it is a full article.
- Run `bundle exec jekyll build` after changing `_data` or `_config.yml`.
