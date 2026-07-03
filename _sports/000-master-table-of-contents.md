---
layout: act
title: "Sports Knowledge Master Table of Contents"
description: "A Jharkhand and India oriented sports vocabulary, news reading, and conversation roadmap."
permalink: /sports/
math: false
---

<article class="act-document act-section-document investment-document sports-document">
  <p class="act-chapter-kicker">Sports Knowledge</p>
  <h2 class="act-section-heading"><span>0</span>Master Table of Contents</h2>
  <p class="act-essence-box">This is no longer only a signboard. Every item below now opens a full chapter inside the <code>_sports</code> collection, with vocabulary, explanations, examples, reliable sources, and a practice task. The base is Jharkhand and India, but the route deliberately expands to India-versus-world matches, international tournaments, rankings, and global legends.</p>

  <div class="sports-figure-grid" aria-label="Jharkhand sports reference images">
    <figure class="investment-diagram-figure">
      <img src="{{ '/assets/sports/ms-dhoni-ranchi-cricket.jpg' | relative_url }}" alt="MS Dhoni speaking at Prabhav 2023">
      <figcaption>MS Dhoni gives the cricket learner a Ranchi anchor: captaincy, finishing, wicket-keeping, pressure, and IPL vocabulary.</figcaption>
    </figure>
    <figure class="investment-diagram-figure">
      <img src="{{ '/assets/sports/deepika-kumari-jharkhand-archery.jpg' | relative_url }}" alt="Deepika Kumari, Indian recurve archer from Jharkhand">
      <figcaption>Deepika Kumari gives the Jharkhand learner an Olympic-sport anchor: archery, ranking, qualification, precision, and medal language.</figcaption>
    </figure>
  </div>

  <figure class="investment-diagram-figure sports-wide-figure">
    <img src="{{ '/assets/sports/international-sports-news-circuit.svg' | relative_url }}" alt="International sports news circuit connecting India to global schedules, live scores, rankings, match reports, tournaments, and legends">
    <figcaption>International sports news becomes easier when every story is sorted into schedule, live score, ranking, report, tournament, or legend context.</figcaption>
  </figure>

  <details class="investment-diagram-source">
    <summary>Image credits</summary>
    <pre>MS Dhoni photo: RIGI, Creative Commons Attribution 3.0.
Deepika Kumari photo: Rajivranprasad, Creative Commons Attribution-Share Alike 3.0.
International sports news circuit: original site graphic.
Full source links are saved in assets/sports/CREDITS.md.</pre>
  </details>
</article>

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

<article class="act-document act-section-document investment-document sports-document">
  <p class="act-chapter-kicker">Study Method</p>
  <h2 class="act-section-heading"><span>1</span>How To Use These Chapters</h2>
  <p class="act-essence-box">Start with chapters 1-10 for the shared language of sports news. Then read chapters 11-16 for international India-versus-world context. Study cricket chapters 17-23 first if you want quick confidence in Indian conversation, then add football, Olympic sports, Jharkhand anchors, legends, news reading, and practice chapters.</p>
  <section class="sports-topic">
    <p><strong>One sitting rule:</strong> read one chapter, open one source from that chapter, and complete the practice task. Do not try to finish the whole course in one day.</p>
    <p><strong>Notebook rule:</strong> keep three lists: vocabulary, players or teams, and questions. The same words repeat across sports; repetition is the bridge you missed in childhood.</p>
    <p><strong>Conversation rule:</strong> after every three chapters, explain one idea aloud in simple language. Speaking is where confidence becomes real.</p>
  </section>
</article>
