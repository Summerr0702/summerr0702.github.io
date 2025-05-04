---
layout: page
title: "Film"
permalink: /film/
---

{% assign groups = site.film | group_by: "region" %}
<div class="collection-grid">
  {% for group in groups %}
    {% assign name = group.name %}
    {% assign thumb = group.items[0].image %}
    <div class="collection-grid__item">
      <a href="/film/{{ name | downcase }}/">
        <img src="{{ thumb }}" alt="{{ name }}" style="width:100%;height:auto;border-radius:4px"/>
        <h4 style="text-align:center;margin-top:.5rem">{{ name }}</h4>
      </a>
    </div>
  {% endfor %}
</div>
