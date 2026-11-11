---
title: Projects
layout: single
permalink: /projects/
classes: wide
---

Simulations, data analysis, and software I built, mostly to answer questions I was curious about.

<div class="entries-grid">
  {% assign sorted_projects = site.projects | sort: 'date' | reverse %}
  {% for post in sorted_projects %}
    {% include archive-single.html type='grid' %}
  {% endfor %}
</div>