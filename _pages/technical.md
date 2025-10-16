---
title: Projects
layout: single
permalink: /projects/
classes: wide
---

Coding projects, technical analysis, and programming insights.

<div class="entries-grid">
  {% assign sorted_projects = site.projects | sort: 'date' | reverse %}
  {% for post in sorted_projects %}
    {% include archive-single.html type='grid' %}
  {% endfor %}
</div>