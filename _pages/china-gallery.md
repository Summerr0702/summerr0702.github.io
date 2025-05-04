---
layout: page
title:  "Film - China"
permalink: /film/china/
author_profile: false
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
  max-height:65vh !important;  /* 你喜欢的高度 */
  border-radius:8px;
  box-shadow:0 10px 24px rgba(0,0,0,.35);
}

.ginner{                      /* ginner 是 GLightbox 的最里层容器 */
  display:flex !important;    /* 改成 Flex */
  align-items:center !important;  /* 垂直居中 */
  justify-content:center !important; /* 水平居中 */
  height:100%; width:100%;    /* 占满弹窗，保证居中参考系 */
}
</style>

{% comment %}
抓取所有 region == "China" 的条目，把每个 roll 的 gallery 图片合并。
{% endcomment %}
{% assign rolls = site.film | where:"region","China" %}
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
