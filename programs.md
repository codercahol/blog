---
layout: single
title: Programs
permalink: /programs/
author_profile: false
---

<div class="world-index">
  <p class="lede">Larger research and strategy directions: not just projects, but recurring bets about what needs to exist for better physical-world technology.</p>

  <section class="section-block" aria-labelledby="program-list">
    <div class="section-heading">
      <p class="eyebrow">Bigger bets</p>
      <h2 id="program-list">Programs</h2>
    </div>

    <div class="card-grid">
      {% for program in site.data.programs %}
        <article class="world-card" id="{{ program.slug }}">
          <p class="world-card__meta">{{ program.status }}</p>
          <h3>{{ program.title }}</h3>
          <p>{{ program.summary }}</p>
          {% if program.themes %}
            <ul class="tag-list" aria-label="Themes">
              {% for theme in program.themes %}
                <li>{{ theme }}</li>
              {% endfor %}
            </ul>
          {% endif %}
        </article>
      {% endfor %}
    </div>
  </section>
</div>
