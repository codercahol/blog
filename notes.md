---
layout: single
title: Notes
permalink: /notes/
author_profile: false
---

<div class="world-index">
  <p class="lede">Essays, technical notes, partial thoughts, and lab-notebook-style writing. This section preserves the writing archive but no longer makes the whole site a blog feed.</p>

  <section class="section-block" aria-labelledby="notes-list">
    <div class="section-heading">
      <p class="eyebrow">Archive</p>
      <h2 id="notes-list">Writing</h2>
    </div>

    <div class="entry-list">
      {% for post in site.posts %}
        <article class="entry-row">
          <div class="entry-row__date">{{ post.date | date: "%Y.%m.%d" }}</div>
          <div class="entry-row__body">
            <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
            <p>{{ post.excerpt | strip_html | normalize_whitespace | truncate: 220 }}</p>
            {% if post.tags %}
              <ul class="tag-list" aria-label="Tags">
                {% for tag in post.tags %}
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
