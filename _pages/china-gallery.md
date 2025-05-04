---
layout: page               # 用最简 page 模板
title:  "Film - China"
permalink: /film/china/
author_profile: false       # 不要侧栏
---

<style>
/* ======== ①　只在本页隐藏全局框架 ======== */
.masthead,          /* 顶部导航栏 */
.page__footer,      /* 最底版权信息 */
.page__sidebar{     /* 侧栏（author profile）*/
  display:none !important;
}

/* ======== ②　Masonry 居中瀑布流 ======== */
.masonry{
  column-count:3;          /* 桌面 3 列 */
  column-gap:1rem;
  max-width:960px;         /* 中间内容宽度，可自行调 */
  margin:1rem auto 2rem;   /* 左右 auto → 居中 */
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
  transition:transform .25s ease, box-shadow .25s ease;
}

/* Hover：微放大 + 阴影 */
.masonry__item:hover img{
  transform:scale(1.04);
  box-shadow:0 8px 16px rgba(0,0,0,.25);
}
</style>

{% comment %}
  把所有 region == "China" 的 _film 条目抓出来并汇总图片
{% endcomment %}
{% assign rolls = site.film | where:"region","China" %}
{% assign imgs  = "" | split:"" %}
{% for r in rolls %}
  {% assign imgs = imgs | concat:r.gallery %}
{% endfor %}

<div class="masonry">
  {% for img in imgs %}
    <div class="masonry__item">
      <img src="{{ img | relative_url }}" alt="China film">
    </div>
  {% endfor %}
</div>
