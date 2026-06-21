---
title: "Jharkhand State Universities Act, 2026"
summary: "Table of contents extracted from Gazette."
date: 2024-06-13 01:10:00 +0530
categories:
  - doc-acts

hidden: true
---

<div class="act-toc-intro">
  <a class="act-pdf-link" href="{{ '/assets/pdf/ref/acts/2026-Gazette-Jharkhand-University-Act.pdf' | relative_url }}">Gazette PDF</a>
</div>

<div class="act-toc-shell">
  {% for group in site.data.jharkhand_university_act_toc %}
    <section class="act-toc-chapter">
      <h2>{{ group.chapter }}</h2>
      <ul class="act-toc-list">
        {% for item in group.items %}
          <li class="{% unless item.number %}act-toc-item-plain{% endunless %}">
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
