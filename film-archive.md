---
layout: page
title: "Film"
permalink: /film/
---

<style>
.collection-grid { … }
.collection-grid__item { … }
.collection-grid__item img { … }
.collection-grid__label { … }
</style>

{% assign groups = site.film | group_by: "region" %}
<div class="collection-grid"> … </div

<div class="collection-grid">
  {% for group in groups %}
    {% assign name  = group.name %}
    {% assign thumb = group.items[0].image %}
    <div class="collection-grid__item">
      <a href="/film/{{ name | downcase }}/">
        <img src="{{ thumb }}" alt="{{ name }}"/>
        <p class="collection-grid__label">{{ name }}</p>
      </a>
    </div>
  {% endfor %}
</div>
