---
layout: single
title:  "Film"
permalink: /film/
author_profile: true    
---

<style>
/* —— 引入 Google Fonts: Lora —— */
@import url("https://fonts.googleapis.com/css2?family=Lora:wght@400;500;700&display=swap");

/* ===== Film 首页网格 ===== */
.collection-grid{
  display:grid;
  /* 缩略图从 160 px 起跳，比之前 220 px 更小 */
  grid-template-columns:repeat(auto-fill,minmax(160px,1fr));
  gap:1.4rem;
  margin:1.8rem 0;
}

/* 整张卡片可点 */
.collection-grid__item a{
  text-decoration:none;
  color:inherit;
  display:block;
}

/* 缩略图容器 */
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
  filter:brightness(95%);
  transition:filter .25s ease;
}

/* 底部半透明标题 —— 改用 Lora */
.collection-grid__caption{
  position:absolute;
  inset:auto 0 0 0;
  background:rgba(0,0,0,.45);
  color:#fff;
  padding:.4rem .65rem;
  font:500 0.95rem/1.3 "Lora", serif;  /* 这里指定字体 */
  letter-spacing:.4px;
  backdrop-filter:blur(2px);
  transition:background .25s ease;
}

/* Hover: 轻微放大 + 提亮 */
.collection-grid__item:hover .collection-grid__figure{
  transform:scale(1.035);
}
.collection-grid__item:hover img{
  filter:brightness(100%);
}
.collection-grid__item:hover .collection-grid__caption{
  background:rgba(0,0,0,.6);
}

/* 深色模式（可选） */
@media (prefers-color-scheme:dark){
  .collection-grid__caption{background:rgba(0,0,0,.55);}
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
