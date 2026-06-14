---
title: "How To Write Code Blocks"
summary: "A practical guide to fenced code blocks, language names, copy buttons, inline code, and mobile-safe code examples."
date: 2024-06-13 00:55:00 +0530
categories:
  - doc-jekyll
tags:
  - code
  - markdown
  - scss
  - documentation
permalink: /how-to-write-code-blocks/
---

Use fenced code blocks when writing commands, source files, LaTeX examples, Maxima examples, YAML front matter, or Jekyll snippets. Add the language name immediately after the opening fence.

## Basic Syntax

````markdown
```python
def energy(n):
    return n**2
```
````

The site automatically gives recognized fenced blocks a soft language-aware style, horizontal scrolling on small screens, and a copy button in the top-right corner.

## Inline Code

Use inline code only for short names, paths, commands, and variables:

```markdown
Edit `_sass/_code-blocks.scss` for fenced code block styling.
```

Inline code is intentionally smaller and lighter than a full fenced code block.

## Supported Languages

Use these language names in fenced code blocks:

```text
text
python
latex
tex
maxima
scss
sass
css
html
javascript
js
yaml
yml
bash
shell
sh
markdown
md
jekyll
liquid
json
terminal
console
```

If a language name is not recognized, the code block keeps the default code block style.

## LaTeX Example

````markdown
```latex
\begin{equation}
E_n = \frac{n^2\pi^2\hbar^2}{2mL^2}
\end{equation}
```
````

Use `latex` or `tex` for LaTeX source examples. This is different from writing a rendered equation in normal Markdown.

## Math Derivation Inside A Block

Use a fenced `latex` block when the reader should see the derivation source exactly as typed:

````markdown
```latex
\begin{align}
E\psi(x) &= -\frac{\hbar^2}{2m}\frac{d^2\psi}{dx^2} \\
\frac{d^2\psi}{dx^2} + k^2\psi &= 0,
\qquad
k^2 = \frac{2mE}{\hbar^2}.
\end{align}
```
````

This will appear as a styled code block with a copy button. It will not be rendered as a displayed equation.

If the derivation should render as mathematics in the article, write it outside the fenced code block:

```latex
$$
\begin{align}
E\psi(x) &= -\frac{\hbar^2}{2m}\frac{d^2\psi}{dx^2} \\
\frac{d^2\psi}{dx^2} + k^2\psi &= 0.
\end{align}
$$
```

## Jekyll And Liquid Example

````markdown
```jekyll
{% raw %}
{% include quiz.html source=quiz_questions %}
{% endraw %}
```
````

Use `jekyll` or `liquid` when documenting includes, captures, loops, filters, or template logic.

## Shell Example

````markdown
```bash
bundle exec jekyll build
```
````

Use `bash`, `shell`, or `sh` for terminal commands.

## Where The Styling Lives

The code block design is controlled by:

```text
_sass/_code-blocks.scss
```

The copy button is controlled by:

```text
assets/js/code-copy.js
```

The main stylesheet imports the partial from:

```text
assets/css/style.scss
```

## Small Rules

- Use fenced blocks for multi-line examples.
- Use inline code only for short file names, variables, and commands.
- Prefer a recognized language name when possible.
- Use `text` for plain output or plain file paths.
- Do not force long code lines to wrap; the site scrolls them horizontally on mobile.
