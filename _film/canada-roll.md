---
layout: page                # 或者你想用的 layout
title: "Canada"
region: Canada
author_profile: false
image: /assets/images/film/canada-01.jpg
permalink: /film/canada/
search: true
redirect_from:
  - /film/canada-roll/
gallery:
  - /assets/images/film/canada-01.jpg
  - /assets/images/film/canada-02.jpg
  - /assets/images/film/canada-03.jpg
  - /assets/images/film/canada-04.jpg
  - /assets/images/film/canada-05.jpg
  - /assets/images/film/canada-06.jpg
  - /assets/images/film/canada-07.jpg
  - /assets/images/film/canada-08.jpg
  - /assets/images/film/canada-09.jpg
  - /assets/images/film/canada-10.jpg
  - /assets/images/film/canada-11.jpg
  - /assets/images/film/canada-12.jpg
  - /assets/images/film/canada-13.jpg
  - /assets/images/film/canada-14.jpg
  - /assets/images/film/canada-15.jpg
  - /assets/images/film/canada-16.jpg
  - /assets/images/film/canada-17.jpg
  - /assets/images/film/canada-18.jpg
  - /assets/images/film/canada-19.jpg
  - /assets/images/film/canada-20.jpg
  - /assets/images/film/canada-21.jpg
  - /assets/images/film/canada-22.jpg
  - /assets/images/film/canada-23.jpg
  - /assets/images/film/canada-24.jpg
  - /assets/images/film/canada-25.jpg
  - /assets/images/film/canada-26.jpg
  - /assets/images/film/canada-27.jpg
  - /assets/images/film/canada-28.jpg
  - /assets/images/film/canada-29.jpg
  - /assets/images/film/canada-30.jpg
  - /assets/images/film/canada-31.jpg
  - /assets/images/film/canada-32.jpg
  - /assets/images/film/canada-33.jpg
  - /assets/images/film/canada-34.jpg
  - /assets/images/film/canada-35.jpg
  - /assets/images/film/canada-36.jpg
  - /assets/images/film/canada-37.jpg
  - /assets/images/film/canada-38.jpg
  - /assets/images/film/canada-39.jpg
  - /assets/images/film/canada-40.jpg
  - /assets/images/film/canada-41.jpg
  - /assets/images/film/canada-42.jpg
  - /assets/images/film/canada-43.jpg
  - /assets/images/film/canada-44.jpg
  - /assets/images/film/canada-45.jpg
  - /assets/images/film/canada-46.jpg
  - /assets/images/film/canada-47.jpg
  - /assets/images/film/canada-48.jpg
  - /assets/images/film/canada-49.jpg
  - /assets/images/film/canada-50.jpg
---

<!-- 悬浮返回按钮 -->
<a class="back-btn" href="/film/" title="Back to Film">
  <i class="fas fa-arrow-left"></i>
</a>

<style>
/* —— 隐藏全站框架 —— */
.masthead, .page__footer, .page__sidebar{display:none!important;}

/* —— Masonry 瀑布流 —— */
.masonry{
  column-count:3; column-gap:1rem;
  max-width:960px; margin:1rem auto 2rem;
}
@media(max-width:900px){ .masonry{column-count:2;} }
@media(max-width:600px){ .masonry{column-count:1;} }

.masonry__item{break-inside:avoid;margin-bottom:1rem;}
.masonry__item img{width:100%;display:block;border-radius:6px;object-fit:cover;transition:transform .25s,box-shadow .25s;}
.masonry__item a{text-decoration:none;color:inherit;}

.masonry__item:hover img{transform:scale(1.04);box-shadow:0 8px 16px rgba(0,0,0,.25);}

/* —— 返回按钮样式 —— */
.back-btn{
  position:fixed;top:1rem;left:1rem;z-index:1000;
  width:40px;height:40px;border-radius:50%;
  background:#fff;border:1px solid #ddd;
  display:flex;align-items:center;justify-content:center;
  color:#333;text-decoration:none;
  box-shadow:0 2px 6px rgba(0,0,0,.15);
  transition:transform .2s,background .2s;
}
.back-btn:hover{background:#f5f5f5;transform:scale(1.08);}

/* —— 调整弹窗留白 —— */
.glightbox-container{
  background:rgba(0,0,0,.55)!important;   /* 0.55 越小越透，可改 0.4~0.7 */
}

.gslide-media{
  max-width:60vw !important;   /* 你喜欢的宽度 */
  border-radius:8px;
  box-shadow:0 10px 24px rgba(0,0,0,.35);
}

.gslide-inner{
  display:flex !important;
  align-items:center !important;     /* 垂直居中 */
  justify-content:center !important; /* 水平居中 */
  height:100%; width:100%;
}
</style>

{% comment %}
抓取所有 region == "Canada" 的条目，把每个 roll 的 gallery 图片合并。
{% endcomment %}
{% assign rolls = site.film | where:"region","Canada" %}
{% assign imgs  = "" | split:"" %}
{% for r in rolls %}
  {% assign imgs = imgs | concat:r.gallery %}
{% endfor %}

<div class="masonry js-gallery">
{% for img in imgs %}
  <div class="masonry__item">
    <a href="{{ img | relative_url }}">
      <img src="{{ img | relative_url }}" alt="">
    </a>
  </div>
{% endfor %}
</div>

<!-- ===== 轻量 GLightbox ===== -->
<link rel="stylesheet" href="https://unpkg.com/glightbox/dist/css/glightbox.min.css">
<script src="https://unpkg.com/glightbox/dist/js/glightbox.min.js"></script>
<script>
/* 初始化：所有 Masonry 里的 <a> 都进 Lightbox */
document.addEventListener('DOMContentLoaded', () => {
  GLightbox({
    selector: '.masonry__item a',
    touchNavigation: true,
    loop: true,
    zoomable: false,          // 不要滚轮缩放
    width: '70vw', height: '75vh',  // 和你前面想要的“弹窗”尺寸一致
    slideEffect: 'zoom'
  });
});
</script>

