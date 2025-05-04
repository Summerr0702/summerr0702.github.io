---
layout: page
title: "Film"
permalink: /film/
---

<style>
/* ===== 仅在 /film/ 页面生效的网格样式 ===== */
.collection-grid{
  /* 自动填充，最小 200px，最大 1fr */
  display:grid;
  grid-template-columns:repeat(auto-fill,minmax(200px,1fr));
  gap:1.2rem;
  max-width:960px;
  margin:1.6rem auto;
  padding:0;
}

/* 每个缩略图块 */
.collection-grid__item{
  list-style:none;
  text-align:center;
}

/* 缩略图本体 */
.collection-grid__item img{
  width:100%;
  aspect-ratio:1/1;          /* 强制正方形 */
  object-fit:cover;          /* 溢出裁剪 */
  border-radius:6px;
  box-shadow:0 0 0 2px #e0e0e0 inset;
  transition:transform .25s ease, box-shadow .25s ease;
  display:block;
}

/* 标题（地区名字） */
.collection-grid__label{
  margin-top:.5rem;
  font-size:1rem;
  font-weight:500;
  line-height:1.3;
  color:inherit;
}

/* ---------- Hover 效果 ---------- */
.collection-grid__item:hover img{
  transform:scale(1.04);
  box-shadow:0 4px 12px rgba(0,0,0,.15);
}

/* ---------- 深色模式自适应（可选） ---------- */
@media (prefers-color-scheme:dark){
  .collection-grid__item img{
    box-shadow:0 0 0 2px #444 inset;
  }
  .collection-grid__item:hover img{
    box-shadow:0 4px 12px rgba(0,0,0,.6);
  }
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
