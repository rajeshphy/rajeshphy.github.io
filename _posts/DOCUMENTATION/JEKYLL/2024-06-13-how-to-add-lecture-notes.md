---
title: "How To Add Lecture Notes"
summary: "A quick workflow for adding B.Sc and M.Sc lecture-note posts so they appear automatically on the Notes page."
date: 2024-06-13 00:35:00 +0530
categories:
  - doc-jekyll
tags:
  - notes
  - lecture
  - workflow
permalink: /how-to-add-lecture-notes/
---

Lecture-note posts live inside `_posts` and are placed on the Notes page by category.

## Folder Pattern

Use the existing structure:

```text
_posts/1_MSC/SEM-II/
_posts/2_BSC/SEM-V/
```

The filename must begin with a valid date:

```text
2026-06-13-topic-name.md
```

## B.Sc Front Matter

```yaml
---
title: "Quantum Tunneling"
summary: "Short description of the lecture note."
date: 2026-06-13 10:00:00 +0530
categories:
  - notes
  - bsc
  - bsc-v
  - lecture
tags:
  - quantum-mechanics
hidden: true
---
```

Change `bsc-v` to the correct semester, from `bsc-i` to `bsc-viii`.

## M.Sc Front Matter

```yaml
---
title: "Scattering"
summary: "Short description of the lecture note."
date: 2026-06-13 10:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - quantum-mechanics
hidden: true
---
```

Change `msc-ii` to the correct semester, from `msc-i` to `msc-iv`.

## Checklist

- Put the file in the correct folder.
- Use the correct semester category.
- Keep `hidden: true` if it should appear only through Notes.
- Run `jekyll build` before publishing.
