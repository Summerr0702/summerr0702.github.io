---
layout: page  
title:  "Film - China"
permalink: /film/china/
author_profile: false 
---

<a class="back-btn" href="/film/" title="Back to Film">
  <i class="fas fa-arrow-left"></i>
</a>

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

.masonry__item a{
  text-decoration:none;
  color:inherit;
}

/* Hover：微放大 + 阴影 */
.masonry__item:hover img{
  transform:scale(1.04);
  box-shadow:0 8px 16px rgba(0,0,0,.25);
}

.back-btn{
  position:fixed;
  top:1rem; left:1rem;     /* ↖ 你想放右上就改 right:1rem; left:auto; */
  z-index:1000;            /* 避免被图片遮挡 */
  width:40px; height:40px;
  border-radius:50%;
  background:#fff;
  border:1px solid #ddd;
  display:flex; align-items:center; justify-content:center;
  color:#333; text-decoration:none;
  box-shadow:0 2px 6px rgba(0,0,0,.15);
  transition:transform .2s ease, background .2s ease;
}

.back-btn:hover{
  background:#f5f5f5;
  transform:scale(1.08);
}
</style>

<div class="masonry js-gallery">         {# ← 多加了 js-gallery #}
{% for img in imgs %}
  <div class="masonry__item">
    <a href="{{ img | relative_url }}"   title="click to enlarge">
      <img src="{{ img | relative_url }}" alt="China film">
    </a>
  </div>
{% endfor %}
</div>
