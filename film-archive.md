---
layout: page
title: "Film"
permalink: /film/
---

<style>
/* ===== 仅在 /film/ 页面生效的网格样式 ===== */
.collection-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 1rem;
  max-width: 960px;
  margin: 1.5rem auto;
}
.collection-grid__item {
  text-align: center;
}
.collection-grid__item img {
  width: 100%;
  height: 3;
  padding-bottom: 100%;
  object-fit: cover;
  border-radius: 4px;
  display: block;
}
.collection-grid__label {
  margin-top: .5rem;
  font-size: 1rem;
  font-weight: 500;
}
</style>

{% assign groups = site.film | group_by: "region" %}
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
