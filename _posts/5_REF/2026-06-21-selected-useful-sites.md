---
title: "Academician Desk"
summary: "A mobile-first link desk for academicians working in Jharkhand state universities."
excerpt: "Frequently used links for professors working in Jharkhand state universities."
date: 2026-06-21 10:00:00 +0530
layout: public-links
kicker: "Jharkhand State Universities"
hide_public_kicker: true
show_public_summary: false
categories:
  - doc-tech
permalink: /selected-useful-sites/
hidden: true
---

{% assign desk = site.data.jharkhand_faculty_desk %}
{% for section in desk.sections %}
<section class="faculty-link-section{% if forloop.first %} is-priority{% endif %}">
  <h2>{{ section.title }}</h2>
  <ul class="faculty-link-list">
    {% for item in section.items %}
      <li>
        <a class="faculty-link-card" href="{{ item.url }}">
          <span class="faculty-link-title">{{ item.title }}</span>
          {% if item.note %}
            <span class="faculty-link-note">{{ item.note }}</span>
          {% endif %}
        </a>
      </li>
    {% endfor %}
  </ul>
</section>
{% endfor %}
