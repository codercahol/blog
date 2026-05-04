---
layout: single
title: Adventures
permalink: /adventures/
author_profile: false
---

<div class="world-index">
  <p class="lede">A small personal section for places, field observations, outdoor systems, and photo notes. It should add texture without becoming a lifestyle blog.</p>

  <section class="section-block" aria-labelledby="adventures-list">
    <div class="section-heading">
      <p class="eyebrow">Elsewhere</p>
      <h2 id="adventures-list">Adventures</h2>
    </div>

    <div class="card-grid">
      {% for item in site.data.adventures %}
        <article class="world-card" id="{{ item.slug }}">
          {% if item.image %}
            <figure class="world-card__media">
              <img src="{{ item.image | relative_url }}" alt="{{ item.title | escape }}">
              {% if item.caption %}<figcaption>{{ item.caption }}</figcaption>{% endif %}
            </figure>
          {% endif %}
          <div class="world-card__body">
            <p class="world-card__meta">{{ item.place }} · {{ item.year }}</p>
            <h3>{{ item.title }}</h3>
            <p>{{ item.summary }}</p>
          </div>
        </article>
      {% endfor %}
    </div>
  </section>
</div>
