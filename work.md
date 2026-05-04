---
layout: single
title: Work
permalink: /work/
author_profile: false
---

<div class="world-index">
  <p class="lede">Selected systems and technical dossiers across bioprocesses, instrumentation, models, manufacturing, and hands-on builds.</p>

  <section class="section-block" aria-labelledby="selected-systems">
    <div class="section-heading">
      <p class="eyebrow">Execution</p>
      <h2 id="selected-systems">Selected systems</h2>
    </div>

    <div class="card-grid card-grid--work">
      {% for item in site.data.work %}
        <article class="world-card" id="{{ item.slug }}">
          {% if item.image %}
            <figure class="world-card__media">
              <img src="{{ item.image | relative_url }}" alt="{{ item.title | escape }}">
              {% if item.caption %}<figcaption>{{ item.caption }}</figcaption>{% endif %}
            </figure>
          {% endif %}
          <div class="world-card__body">
            <p class="world-card__meta">{{ item.category }} · {{ item.status }}</p>
            <h3>{{ item.title }}</h3>
            <p>{{ item.summary }}</p>
            {% if item.artifact %}<p class="artifact">{{ item.artifact }}</p>{% endif %}
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

  <section class="section-block" aria-labelledby="work-buckets">
    <div class="section-heading">
      <p class="eyebrow">Map</p>
      <h2 id="work-buckets">How the work clusters</h2>
    </div>
    <div class="compact-grid">
      <div>
        <h3>Bioprocesses and scale-up</h3>
        <p>Bioreactors, physiology, soft sensing, process translation, and evidence that survives a change of scale.</p>
      </div>
      <div>
        <h3>Instrumentation and control</h3>
        <p>Measurement systems, reverse-engineered instruments, reactor feedback, automation, and calibration.</p>
      </div>
      <div>
        <h3>Models tied to experiments</h3>
        <p>Models that clarify what to measure, how to interpret biological variation, and where a system can fail.</p>
      </div>
      <div>
        <h3>Programmable materials and manufacturing</h3>
        <p>Polymer/process systems, scale-up evidence, separations, and infrastructure for making physical technologies real.</p>
      </div>
    </div>
  </section>
</div>
