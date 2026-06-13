---
layout: default
title: "Notes"
permalink: /notes-archive/
---

{% assign bsc_semesters = "bsc-i:Sem-I|bsc-ii:Sem-II|bsc-iii:Sem-III|bsc-iv:Sem-IV|bsc-v:Sem-V|bsc-vi:Sem-VI|bsc-vii:Sem-VII|bsc-viii:Sem-VIII" | split: "|" %}
{% assign msc_semesters = "msc-i:Sem-I|msc-ii:Sem-II|msc-iii:Sem-III|msc-iv:Sem-IV" | split: "|" %}

<section class="notes-page">
  {%- capture bsc_board -%}
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
    {% endfor %}
  {%- endcapture -%}
  {% assign bsc_board = bsc_board | strip %}
  {% if bsc_board != "" %}
    <section class="notice-board current-board notes-auto-board" aria-label="B.Sc semester material">
      <div class="board-pin pin-left"></div>
      <div class="board-pin pin-right"></div>
      <div class="board-heading">
        <span>B.Sc Notes</span>
      </div>

      {{ bsc_board }}
    </section>
  {% endif %}

  {%- capture msc_board -%}
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
    {% endfor %}
  {%- endcapture -%}
  {% assign msc_board = msc_board | strip %}
  {% if msc_board != "" %}
    <section class="notice-board old-board notes-auto-board" aria-label="M.Sc semester material">
      <div class="board-heading">
        <span>M.Sc Notes</span>
      </div>

      {{ msc_board }}
    </section>
  {% endif %}

  {%- capture exam_links -%}
    {%- for post in site.posts -%}
      {%- if post.categories contains "exam" -%}
        <a href="{{ post.url | relative_url }}">
          <span>{{ post.title }}</span>
          <small>{{ post.date | date: "%d %b %Y" }}</small>
        </a>
      {%- endif -%}
    {%- endfor -%}
  {%- endcapture -%}
  {% assign exam_links = exam_links | strip %}
  {% if exam_links != "" %}
    <section class="notice-board docs-board notes-auto-board" aria-label="Exam preparation material">
      <div class="board-heading">
        <span>Exam Notes</span>
      </div>

      <details class="semester-box exam-box">
        <summary>
          <span>NET, JEST & GATE</span>
          <strong>Preparation material</strong>
        </summary>
        <div class="semester-links semester-post-links">
          {{ exam_links }}
        </div>
      </details>
    </section>
  {% endif %}

  {%- capture doc_links -%}
    {%- for post in site.posts -%}
      {%- if post.categories contains "doc" -%}
        <a href="{{ post.url | relative_url }}">
          <span>{{ post.title }}</span>
          <small>{{ post.date | date: "%d %b %Y" }}</small>
        </a>
      {%- endif -%}
    {%- endfor -%}
  {%- endcapture -%}
  {% assign doc_links = doc_links | strip %}
  {% if doc_links != "" %}
    <section class="notice-board docs-board notes-auto-board" aria-label="Jekyll documentation">
      <div class="board-heading">
        <span>Jekyll Documentation</span>
      </div>

      <details class="semester-box">
        <summary>
          <span>Site Writing Guides</span>
          <strong>Documentation</strong>
        </summary>
        <div class="semester-links semester-post-links">
          {{ doc_links }}
        </div>
      </details>
    </section>
  {% endif %}
</section>
