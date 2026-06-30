---
title: "Disciplined Investment"
summary: "Chapter-wise finance and investment knowledge notes."
date: 2026-06-30 09:00:00 +0530
categories:
  - doc-knowledge

hidden: true
math: true
---

<div class="act-toc-intro">
  <span>Finance and investment knowledge notes from the Investment book chapters.</span>
</div>

<div class="act-toc-shell">
  {% for group in site.data.finance_investment_toc %}
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
