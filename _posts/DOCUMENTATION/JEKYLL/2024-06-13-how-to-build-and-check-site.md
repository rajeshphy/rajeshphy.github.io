---
title: "How To Build And Check The Site"
summary: "The basic local checks to run after editing posts, styles, assets, or templates."
date: 2024-06-13 00:50:00 +0530
categories:
  - doc-jekyll
tags:
  - build
  - jekyll
  - checks
permalink: /how-to-build-and-check-site/
---

Run a build after editing posts, Sass, includes, layouts, or assets.

## Build Command

```bash
jekyll build
```

If the local Ruby environment supports Bundler cleanly, this command is also useful:

```bash
bundle exec jekyll build
```

## Local Server

```bash
jekyll serve
```

Open the local URL shown in the terminal, usually:

```text
http://127.0.0.1:4000/
```

## What To Check

- Notes page opens and grouped blocks appear.
- Long equations scroll on mobile.
- Quiz buttons work and show the result card.
- Standard problem sheets are not clickable and show the answer key.
- Images and PDFs load.
- Header search opens and returns results.

## Common Issues

| Issue | Check |
|---|---|
| Post not visible | Date is not in the future, category is correct |
| Notes grouping wrong | Semester or exam category spelling |
| Image broken | Asset path and `relative_url` |
| Math clipped | Equation is inside `$...$` or `$$...$$` |
| Style not updated | Rebuild the site after Sass edits |
