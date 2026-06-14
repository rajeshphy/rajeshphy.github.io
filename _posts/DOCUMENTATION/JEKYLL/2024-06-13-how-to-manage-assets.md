---
title: "How To Manage Images And PDFs"
summary: "Where to place images and PDFs and how to link them safely with relative_url."
date: 2024-06-13 00:45:00 +0530
categories:
  - doc-jekyll
tags:
  - assets
  - images
  - pdf
permalink: /how-to-manage-assets/
---

Images and PDFs should stay inside `assets` so GitHub Pages can publish them.

## Recommended Folders

```text
assets/images/bsc/sem-v/topic-name/
assets/images/msc/sem-ii/topic-name/
assets/images/documentation/tech/
assets/images/documentation/code/
assets/pdfs/documentation/tech/
```

Use lowercase folder names when possible, and keep related files together.

## Image Syntax

```markdown
![Diagram caption]({{ '/assets/images/bsc/sem-v/tunneling/example.png' | relative_url }})
```

## PDF Link Syntax

```markdown
[Download PDF]({{ '/assets/pdfs/documentation/tech/file.pdf' | relative_url }})
```

Using `relative_url` keeps links working with the current `baseurl`.

## Small Rules

- Avoid spaces in filenames.
- Prefer descriptive names such as `barrier-potential.png`.
- Keep large PDFs in `assets/pdfs`.
- After adding files, run `jekyll build` and click the generated link locally.
