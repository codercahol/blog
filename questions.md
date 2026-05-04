---
layout: single
title: Questions
permalink: /questions/
author_profile: false
---

<div class="world-index">
  <p class="lede">A deliberately incomplete list of questions I keep circling. These are hooks for collaborators, future notes, and research programs.</p>

  <section class="section-block" aria-labelledby="question-list">
    <div class="section-heading">
      <p class="eyebrow">Open loops</p>
      <h2 id="question-list">Current questions</h2>
    </div>

    <div class="question-list">
      {% for item in site.data.questions %}
        <article class="question-row">
          <p class="world-card__meta">{{ item.category }}</p>
          <h3>{{ item.question }}</h3>
          <p>{{ item.context }}</p>
        </article>
      {% endfor %}
    </div>
  </section>
</div>
