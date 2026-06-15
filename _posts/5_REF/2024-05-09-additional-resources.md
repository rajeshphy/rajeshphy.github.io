---
title: "Reference Resources"
summary: "Curated physics formula sheets, reading notes, journals, and appendix material."
date: 2024-05-09 10:47:26 +0530
categories:
  - ref
  - resources
permalink: /ref/
hidden: true
---

{% assign resources = site.data.ref.items %}

<ul class="ref-list ref-resource-list">
  {% for item in resources %}
    <li>
      {% if item.url %}
        {% if item.url contains "://" %}
          <a href="{{ item.url }}" target="_blank" rel="noopener">{{ item.title }}</a>
        {% else %}
          <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
        {% endif %}
      {% else %}
        <strong>{{ item.title }}</strong>
      {% endif %}

      {% if item.children %}
        <ul>
          {% for child in item.children %}
            <li>
              {% if child.url %}
                {% if child.url contains "://" %}
                  <a href="{{ child.url }}" target="_blank" rel="noopener">{{ child.title }}</a>
                {% else %}
                  <a href="{{ child.url | relative_url }}">{{ child.title }}</a>
                {% endif %}
              {% else %}
                <strong>{{ child.title }}</strong>
              {% endif %}
            </li>
          {% endfor %}
        </ul>
      {% endif %}
    </li>
  {% endfor %}
</ul>
