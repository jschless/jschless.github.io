---
title: Book Reviews
layout: single
permalink: /book-reviews/
classes: wide
---

## Book Reviews

Here are my thoughts and reviews on books I've read:

<div class="entries-grid">
  {% assign sorted_books = site.books | sort: 'date' | reverse %}
  {% for post in sorted_books %}
    {% include archive-single.html type='grid' %}
  {% endfor %}
</div>