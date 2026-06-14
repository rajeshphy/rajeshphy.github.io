---
title: "How To Add Exam Material"
summary: "How to add quiz posts and standard problem sheets under the Exam Notes section."
date: 2024-06-13 00:40:00 +0530
categories:
  - doc-jekyll
tags:
  - exam
  - quiz
  - problems
permalink: /how-to-add-exam-material/
---

Exam material appears on the Notes page by subject category.

## Folder Pattern

Use the matching subject folder:

```text
_posts/3_EXAM/Quantum/
_posts/3_EXAM/Electronics/
_posts/3_EXAM/Miscellaneous/
```

## Front Matter

```yaml
---
title: "Quantum Standard Problems"
summary: "Standard competitive exam problems in quantum mechanics."
date: 2026-06-13 11:20:00 +0530
categories:
  - exam
  - exam-quantum
tags:
  - quantum-mechanics
hidden: true
---
```

Use `exam-misc` for mixed questions. Other common categories include `exam-mathematical`, `exam-classical`, `exam-electronics`, `exam-optics`, and `exam-waves`.

## Quiz Or Problem Sheet

Use `quiz.html` when the student should click options and get feedback.

Use `exam-problems.html` when the student should read a normal problem sheet and check the answer key at the end.

```liquid
{% raw %}{% include quiz.html source=quiz_questions %}{% endraw %}
```

```liquid
{% raw %}{% include exam-problems.html source=exam_problems %}{% endraw %}
```

## Checklist

- Put the post in the correct subject folder.
- Add `exam` and the specific `exam-*` category.
- Keep `hidden: true`.
- Check every answer key before publishing.
