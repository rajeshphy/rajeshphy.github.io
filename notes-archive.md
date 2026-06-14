---
layout: default
title: "Notes"
permalink: /notes-archive/
---

{% assign bsc_semesters = "bsc-i:Sem-I|bsc-ii:Sem-II|bsc-iii:Sem-III|bsc-iv:Sem-IV|bsc-v:Sem-V|bsc-vi:Sem-VI|bsc-vii:Sem-VII|bsc-viii:Sem-VIII" | split: "|" %}
{% assign msc_semesters = "msc-i:Sem-I|msc-ii:Sem-II|msc-iii:Sem-III|msc-iv:Sem-IV" | split: "|" %}
{% assign exam_groups = "exam-misc:--MISC--|exam-mathematical:Mathematical|exam-classical:Classical|exam-quantum:Quantum|exam-electromagnetic:Electromagnetic|exam-thermodynamic:Thermodynamic|exam-statistical:Statistical|exam-atomic:Atomic|exam-nuclear:Nuclear|exam-particle:Particle|exam-condensed:Condensed|exam-electronics:Electronics|exam-experimental:Experimental|exam-optics:Optics|exam-relativity:Relativity|exam-waves:Waves" | split: "|" %}
{% assign documentation_groups = "doc-jekyll|doc-tech|doc-code" | split: "|" %}

<section class="notes-page">
  {% assign bsc_count = 0 %}
  {%- capture bsc_visible_board -%}
    {% for semester in bsc_semesters %}
      {% assign semester_parts = semester | split: ":" %}
      {% assign semester_category = semester_parts[0] %}
      {% assign semester_label = semester_parts[1] %}
      {%- capture semester_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains semester_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign semester_links = semester_links | strip %}
      {% if semester_links != "" %}
        {% assign bsc_count = bsc_count | plus: 1 %}
        {% if bsc_count <= 4 %}
          <details class="semester-box">
            <summary>
              <span>{{ semester_label }}</span>
              <strong>Lecture notes</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ semester_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {%- capture bsc_extra_board -%}
    {% assign bsc_count_extra = 0 %}
    {% for semester in bsc_semesters %}
      {% assign semester_parts = semester | split: ":" %}
      {% assign semester_category = semester_parts[0] %}
      {% assign semester_label = semester_parts[1] %}
      {%- capture semester_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains semester_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign semester_links = semester_links | strip %}
      {% if semester_links != "" %}
        {% assign bsc_count_extra = bsc_count_extra | plus: 1 %}
        {% if bsc_count_extra > 4 %}
          <details class="semester-box">
            <summary>
              <span>{{ semester_label }}</span>
              <strong>Lecture notes</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ semester_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {% assign bsc_visible_board = bsc_visible_board | strip %}
  {% assign bsc_extra_board = bsc_extra_board | strip %}
  {% assign bsc_board = bsc_visible_board | append: bsc_extra_board | strip %}
  {% if bsc_board != "" %}
    <section class="notice-board current-board notes-auto-board" aria-label="B.Sc semester material">
      <div class="board-pin pin-left"></div>
      <div class="board-pin pin-right"></div>
      <div class="board-heading">
        <span>B.Sc Notes</span>
      </div>

      {{ bsc_visible_board }}
      {% if bsc_extra_board != "" %}
        <details class="board-more">
          <summary>
            <span>More</span>
            <strong>{{ bsc_count | minus: 4 }} more</strong>
          </summary>
          <div class="board-more-panel">
            {{ bsc_extra_board }}
          </div>
        </details>
      {% endif %}
    </section>
  {% endif %}

  {% assign msc_count = 0 %}
  {%- capture msc_visible_board -%}
    {% for semester in msc_semesters %}
      {% assign semester_parts = semester | split: ":" %}
      {% assign semester_category = semester_parts[0] %}
      {% assign semester_label = semester_parts[1] %}
      {%- capture semester_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains semester_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign semester_links = semester_links | strip %}
      {% if semester_links != "" %}
        {% assign msc_count = msc_count | plus: 1 %}
        {% if msc_count <= 4 %}
          <details class="semester-box">
            <summary>
              <span>{{ semester_label }}</span>
              <strong>Lecture notes</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ semester_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {%- capture msc_extra_board -%}
    {% assign msc_count_extra = 0 %}
    {% for semester in msc_semesters %}
      {% assign semester_parts = semester | split: ":" %}
      {% assign semester_category = semester_parts[0] %}
      {% assign semester_label = semester_parts[1] %}
      {%- capture semester_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains semester_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign semester_links = semester_links | strip %}
      {% if semester_links != "" %}
        {% assign msc_count_extra = msc_count_extra | plus: 1 %}
        {% if msc_count_extra > 4 %}
          <details class="semester-box">
            <summary>
              <span>{{ semester_label }}</span>
              <strong>Lecture notes</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ semester_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {% assign msc_visible_board = msc_visible_board | strip %}
  {% assign msc_extra_board = msc_extra_board | strip %}
  {% assign msc_board = msc_visible_board | append: msc_extra_board | strip %}
  {% if msc_board != "" %}
    <section class="notice-board old-board notes-auto-board" aria-label="M.Sc semester material">
      <div class="board-heading">
        <span>M.Sc Notes</span>
      </div>

      {{ msc_visible_board }}
      {% if msc_extra_board != "" %}
        <details class="board-more">
          <summary>
            <span>More</span>
            <strong>{{ msc_count | minus: 4 }} more</strong>
          </summary>
          <div class="board-more-panel">
            {{ msc_extra_board }}
          </div>
        </details>
      {% endif %}
    </section>
  {% endif %}

  {% assign exam_count = 0 %}
  {%- capture exam_visible_board -%}
    {% for group in exam_groups %}
      {% assign group_parts = group | split: ":" %}
      {% assign group_category = group_parts[0] %}
      {% assign group_label = group_parts[1] %}
      {%- capture group_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains group_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign group_links = group_links | strip %}
      {% if group_links != "" %}
        {% assign exam_count = exam_count | plus: 1 %}
        {% if exam_count <= 4 %}
          <details class="semester-box exam-box">
            <summary>
              <span>{{ group_label }}</span>
              <strong>Exam practice</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ group_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {%- capture exam_extra_board -%}
    {% assign exam_count_extra = 0 %}
    {% for group in exam_groups %}
      {% assign group_parts = group | split: ":" %}
      {% assign group_category = group_parts[0] %}
      {% assign group_label = group_parts[1] %}
      {%- capture group_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains group_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign group_links = group_links | strip %}
      {% if group_links != "" %}
        {% assign exam_count_extra = exam_count_extra | plus: 1 %}
        {% if exam_count_extra > 4 %}
          <details class="semester-box exam-box">
            <summary>
              <span>{{ group_label }}</span>
              <strong>Exam practice</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ group_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {% assign exam_visible_board = exam_visible_board | strip %}
  {% assign exam_extra_board = exam_extra_board | strip %}
  {% assign exam_board = exam_visible_board | append: exam_extra_board | strip %}
  {% if exam_board != "" %}
    <section class="notice-board docs-board notes-auto-board" aria-label="Exam preparation material">
      <div class="board-heading">
        <span>Exam Notes</span>
      </div>

      {{ exam_visible_board }}
      {% if exam_extra_board != "" %}
        <details class="board-more">
          <summary>
            <span>More</span>
            <strong>{{ exam_count | minus: 4 }} more</strong>
          </summary>
          <div class="board-more-panel">
            {{ exam_extra_board }}
          </div>
        </details>
      {% endif %}
    </section>
  {% endif %}

  {% assign documentation_count = 0 %}
  {%- capture documentation_visible_board -%}
    {% for group in documentation_groups %}
      {% assign group_category = group %}
      {% assign group_label = group | split: "-" | last | capitalize %}
      {%- capture group_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains group_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign group_links = group_links | strip %}
      {% if group_links != "" %}
        {% assign documentation_count = documentation_count | plus: 1 %}
        {% if documentation_count <= 4 %}
          <details class="semester-box">
            <summary>
              <span>{{ group_label }}</span>
              <strong>Documentation</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ group_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {%- capture documentation_extra_board -%}
    {% assign documentation_count_extra = 0 %}
    {% for group in documentation_groups %}
      {% assign group_category = group %}
      {% assign group_label = group | split: "-" | last | capitalize %}
      {%- capture group_links -%}
        {%- for post in site.posts -%}
          {%- if post.categories contains group_category -%}
            <a href="{{ post.url | relative_url }}">
              <span>{{ post.title }}</span>
              <small>{{ post.date | date: "%d %b %Y" }}</small>
            </a>
          {%- endif -%}
        {%- endfor -%}
      {%- endcapture -%}
      {% assign group_links = group_links | strip %}
      {% if group_links != "" %}
        {% assign documentation_count_extra = documentation_count_extra | plus: 1 %}
        {% if documentation_count_extra > 4 %}
          <details class="semester-box">
            <summary>
              <span>{{ group_label }}</span>
              <strong>Documentation</strong>
            </summary>
            <div class="semester-links semester-post-links">
              {{ group_links }}
            </div>
          </details>
        {% endif %}
      {% endif %}
    {% endfor %}
  {%- endcapture -%}
  {% assign documentation_visible_board = documentation_visible_board | strip %}
  {% assign documentation_extra_board = documentation_extra_board | strip %}
  {% assign documentation_board = documentation_visible_board | append: documentation_extra_board | strip %}
  {% if documentation_board != "" %}
    <section class="notice-board docs-board notes-auto-board" aria-label="Documentation">
      <div class="board-heading">
        <span>Documentation</span>
      </div>

      {{ documentation_visible_board }}
      {% if documentation_extra_board != "" %}
        <details class="board-more">
          <summary>
            <span>More</span>
            <strong>{{ documentation_count | minus: 4 }} more</strong>
          </summary>
          <div class="board-more-panel">
            {{ documentation_extra_board }}
          </div>
        </details>
      {% endif %}
    </section>
  {% endif %}
</section>
