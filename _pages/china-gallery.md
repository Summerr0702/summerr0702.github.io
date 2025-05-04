---
layout: gallery
title: "Film ‑ China"
permalink: /film/china/
author_profile: true
---

<style>
/* ========== Masonry 瀑布流 ========== */
.masonry{
  column-count:3;
  column-gap:1rem;
  max-width:1024px;
  margin:1rem auto 2rem;
}
@media(max-width:900px){ .masonry{column-count:2;} }
@media(max-width:600px){ .masonry{column-count:1;} }

.masonry__item{
  break-inside:avoid;
  margin-bottom:1rem;
}
.masonry__item img{
  width:100%;
  display:block;
  border-radius:6px;
  object-fit:cover;
  box-shadow:0 1px 4px rgba(0,0,0,.08);
}
</style>

{% comment %}
  把 site.film 中 region == "China" 的所有 roll 拿出来，
  把各自的 gallery 合并成一个图片数组。
{% endcomment %}
{% assign rolls = site.film | where: "region", "China" %}
{% assign imgs  = "" | split: "" %}
{% for r in rolls %}
  {% assign imgs = imgs | concat: r.gallery %}
{% endfor %}

<div class="masonry">
{% for img in imgs %}
  <div class="masonry__item">
    <img src="{{ img | relative_url }}" alt="China film">
  </div>
{% endfor %}
</div>
