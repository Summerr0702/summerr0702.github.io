---
layout: page
title: "Film"
permalink: /film/
---

{% assign groups = site.film | group_by: "region" %}

{% for group in groups %}
## {{ group.name }}

<div class="collection-grid">
  {% for item in group.items %}
    <div class="collection-grid__item">
      <a href="{{ item.url }}">
        <img src="{{ item.image }}" alt="{{ item.title }}"/>
        <h4 style="text-align:center;margin-top:.5rem">{{ item.title }}</h4>
      </a>
    </div>
  {% endfor %}
</div>
{% endfor %}
