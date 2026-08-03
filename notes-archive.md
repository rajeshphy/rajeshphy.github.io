---
layout: default
title: "Notes"
permalink: /notes-archive/
---

<section class="notes-page">
  {% for board in site.data.notes_archive.boards %}
    {% include notes-board.html board=board %}
  {% endfor %}
</section>

<script src="{{ '/assets/js/notes-board.js' | relative_url }}" defer></script>
