---
title: "Sports Knowledge Master Table of Contents"
summary: "A Jharkhand and India oriented roadmap for sports vocabulary, news reading, and confident sports conversation."
date: 2026-07-03 08:00:00 +0530
categories:
  - doc-knowledge

hidden: true
---

<div class="act-toc-intro">
  <span>A structured sports-literacy roadmap for building vocabulary, reading match news, and entering sports conversations with confidence.</span>
</div>

<div class="act-toc-intro">
  <a class="act-pdf-link" href="{{ '/sports/' | relative_url }}">Open Master Page</a>
</div>

<div class="act-toc-shell">
  {% for group in site.data.sports_toc %}
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
