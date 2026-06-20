---
title: "Jharkhand State Universities Act, 2026"
summary: "Table of contents for the extracted Gazette text of the Jharkhand State Universities Act, 2026."
date: 2024-06-13 01:10:00 +0530
categories:
  - doc-acts
tags:
  - jharkhand-university-act
  - gazette
  - acts
  - higher-education
hidden: true
---

<div class="act-toc-intro">
  <p>This page follows the contents structure of the Gazette notification and links the section-wise Markdown collection for the Jharkhand State Universities Act, 2026. The Hindi notification text, page headers, page numbers, and repeated watermark fragments have been removed from the collection pages; the English Act text is not paraphrased.</p>
  <a class="act-pdf-link" href="{{ '/assets/pdf/ref/acts/2026-Gazette-Jharkhand-University-Act.pdf' | relative_url }}">Open source Gazette PDF</a>
</div>

<div class="act-toc-shell">
  {% for group in site.data.jharkhand_university_act_toc %}
    <section class="act-toc-chapter">
      <h2>{{ group.chapter }}</h2>
      <ul class="act-toc-list">
        {% for item in group.items %}
          <li>
            {% if item.number %}
              <span class="act-toc-number">{{ item.number }}</span>
            {% endif %}
            <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
          </li>
        {% endfor %}
      </ul>
    </section>
  {% endfor %}
</div>
