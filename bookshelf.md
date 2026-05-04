---
layout: single
title: Bookshelf
permalink: /bookshelf/
author_profile: false
---

<div class="world-index">
  <p class="lede">Books and references that shape how I think about physical systems, manufacturing, biology, infrastructure, design, and technical taste.</p>

  <section class="section-block" aria-labelledby="bookshelf-list">
    <div class="section-heading">
      <p class="eyebrow">Reading</p>
      <h2 id="bookshelf-list">Bookshelf</h2>
    </div>

    <div class="entry-list bookshelf-list">
      {% for book in site.data.bookshelf %}
        <article class="entry-row book-row">
          <div class="entry-row__date">{{ book.category }}</div>
          <div class="entry-row__body">
            <p class="world-card__meta">{{ book.status }}</p>
            <h3>{{ book.title }}</h3>
            <p class="book-author">{{ book.author }}</p>
            <p>{{ book.note }}</p>
          </div>
        </article>
      {% endfor %}
    </div>
  </section>
</div>
