---
title: "How To Edit SCSS Partials"
summary: "A practical guide to editing the segmented Sass files inside the _sass directory without touching one huge CSS file."
date: 2024-06-13 00:50:00 +0530
categories:
  - doc-jekyll
tags:
  - scss
  - sass
  - styles
  - documentation
permalink: /how-to-edit-scss-partials/
---

The site styles are split into focused SCSS partials inside `_sass`. This keeps style edits small and easy to find.

## Main Entry File

The browser still receives one compiled stylesheet:

```text
/assets/css/style.css
```

The source file Jekyll compiles is:

```text
assets/css/style.scss
```

That file imports the partials in order:

```scss
@import "base";
@import "header";
@import "share";
@import "layout-hero";
@import "icons";
@import "posts-pages";
@import "about-cv";
@import "post-list";
@import "notes-resources";
@import "code-math";
@import "code-blocks";
@import "quiz";
@import "tables-search-pager";
@import "mobile";
```

## Which File To Edit

| Need | Edit this file |
|---|---|
| Colors, body, brand, footer | `_sass/_base.scss` |
| Navigation and inline search | `_sass/_header.scss` |
| Header/contact icons | `_sass/_icons.scss` |
| Home hero and main layout | `_sass/_layout-hero.scss` |
| Blog post cards | `_sass/_post-list.scss` |
| About/CV page | `_sass/_about-cv.scss` |
| Notes notice board | `_sass/_notes-resources.scss` |
| Code blocks, figures, MathJax overflow | `_sass/_code-math.scss` |
| Language-aware code block styling and copy button spacing | `_sass/_code-blocks.scss` |
| Quiz interface | `_sass/_quiz.scss` |
| Tables, search page, pager | `_sass/_tables-search-pager.scss` |
| Phone styles | `_sass/_mobile.scss` |

## Editing Rule

Edit the smallest relevant partial. For example, if the WhatsApp icon needs to be bigger, edit `_sass/_icons.scss` and the mobile override in `_sass/_mobile.scss` only if phone sizing also needs a separate adjustment.

## Build After Editing

Run:

```bash
bundle exec jekyll build
```

Jekyll will compile `assets/css/style.scss` into `_site/assets/css/style.css`.
