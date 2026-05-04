## Leron Perez

Personal website for a project-led technical CV/world map. The site is intentionally static, content-first, and low-maintenance: Jekyll, Markdown, Liquid, small YAML data files, and local CSS.

### Build
- Ruby version: see `.ruby-version`.
- One-time setup: `bin/setup`
- Build: `bin/build`
- Local server: `bin/serve`
- Maintenance check: `bin/check`

The scripts pin Bundler to the version in `Gemfile.lock` and install gems under `vendor/bundle` by default. `vendor/bundle`, `_site`, and local Bundler config are ignored.

### Deployment
- The repo uses custom Jekyll plugins and a modern local Jekyll bundle.
- If deploying through GitHub Pages, prefer a GitHub Actions build that runs `bin/build` and publishes `_site`.
- Do not assume GitHub Pages' native builder will match this local dependency set.

### Maintenance Standard
- `bin/check` should complete without warnings.
- Keep framework surface area small; do not add JavaScript or a new static-site framework unless the content model genuinely requires it.
- Prefer data edits in `_data/*.yml` for index cards and lightweight entries.
- Prefer Markdown posts/pages for long-form writing, project details, and program notes.
- Keep generated output out of git.

### Content Map
- `index.html`: homepage.
- `work.md`: selected systems and technical dossiers.
- `notes.md`: writing archive sourced from `_posts/`.
- `programs.md`: larger research/manufacturing theses.
- `questions.md`: open questions and collaboration hooks.
- `tinkering.md`: builds, repairs, rigs, fixtures, and workshop notes.
- `adventures.md`: places, field observations, and short photo notes.
- `bookshelf.md`: books and references.
- `about.md`: concise background and contact.

### Data Files
- `_data/work.yml`
- `_data/programs.yml`
- `_data/questions.yml`
- `_data/tinkering.yml`
- `_data/adventures.yml`
- `_data/bookshelf.yml`

### Images
- Store images by section under `assets/images/`, for example:
  - `assets/images/work/`
  - `assets/images/notes/`
  - `assets/images/tinkering/`
  - `assets/images/adventures/`
  - `assets/images/bookshelf/`
- Add `image` and optional `caption` fields to the relevant `_data/*.yml` entry.
- Use ordinary Markdown images for simple inline images.
- Use Tufte Liquid tags on long-form content pages when placement matters:
  - `{% raw %}{% maincolumn 'assets/images/path.jpg' 'Caption' %}{% endraw %}`
  - `{% raw %}{% fullwidth 'assets/images/path.jpg' 'Caption' %}{% endraw %}`
  - `{% raw %}{% marginfigure 'figure-id' 'assets/images/path.jpg' 'Caption' %}{% endraw %}`

### Tufte Notes
- Sidenotes and margin notes are intended for notes, project details, and program pages, not the homepage.
- Existing custom tags live in `_plugins/`.
- Mobile behavior collapses margin notes behind tap targets so pages remain readable on small screens.
