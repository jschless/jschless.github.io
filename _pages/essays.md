---
title: Essays
layout: single
permalink: /essays/
classes: wide
---

## Essays

Thoughts and reflections on various topics.

<div class="entries-grid">
  {% assign sorted_essays = site.essays | sort: 'date' | reverse %}
  {% for post in sorted_essays %}
    {% include archive-single.html type='grid' %}
  {% endfor %}
</div>