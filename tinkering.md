---
layout: single
title: Tinkering
permalink: /tinkering/
author_profile: false
---

<div class="world-index">
  <p class="lede">Small builds, repairs, rigs, fixtures, and workshop notes. This section is intentionally direct: evidence of practical engineering instinct, not polished case studies.</p>

  <section class="section-block" aria-labelledby="tinkering-list">
    <div class="section-heading">
      <p class="eyebrow">Hands-on</p>
      <h2 id="tinkering-list">Things made because they were needed</h2>
    </div>

    <div class="card-grid">
      {% for item in site.data.tinkering %}
        <article class="world-card" id="{{ item.slug }}">
          {% if item.image %}
            <figure class="world-card__media">
              <img src="{{ item.image | relative_url }}" alt="{{ item.title | escape }}">
              {% if item.caption %}<figcaption>{{ item.caption }}</figcaption>{% endif %}
            </figure>
          {% endif %}
          <div class="world-card__body">
            <p class="world-card__meta">{{ item.year }}</p>
            <h3>{{ item.title }}</h3>
            <p>{{ item.summary }}</p>
            {% if item.tags %}
              <ul class="tag-list" aria-label="Tags">
                {% for tag in item.tags %}
                  <li>{{ tag }}</li>
                {% endfor %}
              </ul>
            {% endif %}
          </div>
        </article>
      {% endfor %}
    </div>
  </section>
</div>
