---
layout: single
title:  "Film Gallery"
permalink: /film/
author_profile: true    
---

<a class="back-btn" href="/film/" title="Back to Film">
  <i class="fas fa-arrow-left"></i>
</a>

<style>
@import url("https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap");

/* ===== Film 首页网格 ===== */
.collection-grid{
  display:grid;
  grid-template-columns:repeat(auto-fill,minmax(160px,1fr));
  gap:1.4rem;
  margin:0.0rem 0;
}

.collection-grid__item a{
  text-decoration:none;
  color:inherit;
  display:block;
}

h1.page__title{
  margin-bottom:.3rem;   /* 原来≈11px → 现在≈5px，可按喜好再调 */
}
  
/* ——— figure 覆盖文字 ——— */
.collection-grid__figure{
  position:relative;
  overflow:hidden;
  border-radius:8px;
  transition:transform .25s ease;
}

.collection-grid__figure img{
  width:100%;
  aspect-ratio:1/1;
  object-fit:cover;
  display:block;
  filter:brightness(92%);
  transition:filter .25s ease;
}

.collection-grid__caption{
  position:absolute;
  inset:auto 0 0 0;
  padding:.25rem .7rem;
  background:rgba(0,0,0,.45);
  backdrop-filter:blur(2px);
  font:500 .82rem/1.25 "Lora", serif;
  color:#fff;
  letter-spacing:.4px;
  transition:background .25s ease;
}

.collection-grid__item:hover .collection-grid__figure{transform:scale(1.035);}
.collection-grid__item:hover img{filter:brightness(100%);}
.collection-grid__item:hover .collection-grid__caption{background:rgba(0,0,0,.6);}

.page__content > p:empty{
  margin:0;
  padding:0;
  display:none;
}

.collection-grid{
  margin-top:-0.3rem;  
}

/* ——— 悬浮返回按钮 ——— */
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

{% assign groups = site.film | group_by: "region" %}
<div class="collection-grid">
{% for group in groups %}
  {% assign region = group.name %}
  {% assign thumb  = group.items[0].image %}
  <div class="collection-grid__item">
    <a href="{{ '/film/' | append: region | downcase | append: '/' | relative_url }}">
      <figure class="collection-grid__figure">
        <img src="{{ thumb | relative_url }}" alt="{{ region }}">
        <figcaption class="collection-grid__caption">{{ region }}</figcaption>
      </figure>
    </a>
  </div>
{% endfor %}
</div>
