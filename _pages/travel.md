---
title: "Travel"
permalink: /travel/
layout: archive
---

{% raw %}
<!-- 按地区分组 -->
{% assign regions = site.posts | where: "categories", "Travel" | group_by: "region" %}
{% for region in regions %}
  <h2 id="{{ region.name | slugify }}">{{ region.name }}</h2>
  <div class="grid__wrapper">
    {% for post in region.items %}
      {% include archive-single.html type="grid" %}
    {% endfor %}
  </div>
{% endfor %}
{% endraw %}
