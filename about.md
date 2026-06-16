---
layout: default
title: "About"
permalink: /about/
---

{% assign about = site.data.about %}
{% assign site_name = site.author.name | default: site.title %}

<article class="cv-page">
  <header class="cv-header">
    <figure class="cv-photo">
      <img src="{{ about.profile.image | relative_url }}" alt="{{ site_name }}">
    </figure>
    <div class="cv-identity">
      <h1>{{ site_name }}</h1>
      <p class="cv-summary">
        <strong>{{ about.profile.role }}</strong> {{ about.profile.summary }}
      </p>
      <div class="cv-contact">
        <a href="mailto:{{ site.email }}">{{ site.email }}</a>
      </div>
    </div>
  </header>

  <section class="cv-section">
    <header>
      <p>Research Papers</p>
    </header>
    <div class="cv-publications">
      {% for paper in about.research_papers %}
        {% if forloop.first %}
          <a href="{{ paper.url }}" target="_blank" rel="noopener">
            <span class="paper-venue">{{ paper.venue }}</span>
            <strong>{{ paper.title }}</strong>
            <small>{{ paper.authors }}</small>
            <span class="paper-doi">DOI {{ paper.doi }}</span>
          </a>
        {% endif %}
      {% endfor %}

      {% assign additional_papers = about.research_papers.size | minus: 1 %}
      {% if additional_papers > 0 %}
        <details class="cv-more-publications">
          <summary>
            <span>More Research Papers</span>
            <strong>{{ additional_papers }} additional paper{% if additional_papers > 1 %}s{% endif %}</strong>
          </summary>
          <div class="cv-more-publications-panel">
            {% for paper in about.research_papers %}
              {% unless forloop.first %}
                <a href="{{ paper.url }}" target="_blank" rel="noopener">
                  <span class="paper-venue">{{ paper.venue }}</span>
                  <strong>{{ paper.title }}</strong>
                  <small>{{ paper.authors }}</small>
                  <span class="paper-doi">DOI {{ paper.doi }}</span>
                </a>
              {% endunless %}
            {% endfor %}
          </div>
        </details>
      {% endif %}
    </div>
  </section>

  <section class="cv-section">
    <header>
      <p>Books</p>
    </header>
    <div class="cv-books">
      {% for book in about.books %}
        <a href="{{ book.url }}" target="_blank" rel="noopener">
          <strong>{{ book.title }}</strong>
          <small>{{ book.detail }}</small>
          <em>{{ book.description }}</em>
        </a>
      {% endfor %}
    </div>
    <div class="cv-article-strip">
      {% for article in about.articles %}
        <a href="{{ article.url }}" target="_blank" rel="noopener">
          <span>{{ article.label }}</span>
          <strong>{{ article.title }}</strong>
        </a>
      {% endfor %}
    </div>
  </section>

  {% if about.talks %}
    <section class="cv-section">
      <header>
        <p>Talks</p>
      </header>
      <div class="cv-list cv-talks">
        {% for talk in about.talks limit: 3 %}
          <article>
            <h3>{{ talk.topic }}</h3>
            {% if talk.date %}
              <time class="cv-talk-date">{{ talk.date }}</time>
            {% endif %}
            <p>
              {{ talk.role }}{% if talk.event %}, {{ talk.event }}{% endif %}{% if talk.organizer %}, {{ talk.organizer }}{% endif %}
            </p>
          </article>
        {% endfor %}
      </div>

      {% assign additional_talks = about.talks.size | minus: 3 %}
      {% if additional_talks > 0 %}
        <details class="cv-more-publications cv-more-talks">
          <summary>
            <span>More Talks</span>
            <strong>{{ additional_talks }} additional talk{% if additional_talks > 1 %}s{% endif %}</strong>
          </summary>
          <div class="cv-more-publications-panel">
            <div class="cv-list cv-talks">
              {% for talk in about.talks offset: 3 %}
                <article>
                  <h3>{{ talk.topic }}</h3>
                  {% if talk.date %}
                    <time class="cv-talk-date">{{ talk.date }}</time>
                  {% endif %}
                  <p>
                    {{ talk.role }}{% if talk.event %}, {{ talk.event }}{% endif %}{% if talk.organizer %}, {{ talk.organizer }}{% endif %}
                  </p>
                </article>
              {% endfor %}
            </div>
          </div>
        </details>
      {% endif %}
    </section>
  {% endif %}

  <section class="cv-section">
    <header>
      <p>Experience</p>
    </header>
    <div class="cv-timeline">
      {% for item in about.experience %}
        <article>
          <time>{{ item.time }}</time>
          <div>
            <h3>{{ item.title }}</h3>
            <p>{{ item.description }}</p>
          </div>
        </article>
      {% endfor %}
    </div>
  </section>

  <section class="cv-columns">
    <div class="cv-section">
      <header>
        <p>Education</p>
      </header>
      <div class="cv-list">
        {% for item in about.education %}
          <article>
            <h3>{{ item.title }}</h3>
            <p>{{ item.description }}</p>
          </article>
        {% endfor %}
      </div>
    </div>

    <div class="cv-section">
      <header>
        <p>Certifications</p>
      </header>
      <div class="cv-list compact">
        {% for item in about.certifications %}
          <article>
            <h3>{{ item.title }}</h3>
            <p>{{ item.description }}</p>
          </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section class="cv-section">
    <header>
      <p>Skills</p>
    </header>
    <div class="cv-skills">
      {% for skill in about.skills %}
        <span>{{ skill }}</span>
      {% endfor %}
    </div>
  </section>
</article>
