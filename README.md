# leronperez.com

Two current efforts: Coherent Matter Moonshot and a stealth startup accelerating
materials testing. Jekyll + one local layout/CSS file; GitHub Pages hosting.

## Local workflow

- Ruby: `.ruby-version`; Bundler: `Gemfile.lock`.
- `bin/setup`: install dependencies into ignored `vendor/bundle`.
- `bin/serve`: preview at http://127.0.0.1:4000.
- `bin/check`: whitespace check and development build.
- `JEKYLL_ENV=production bin/build`: release build.
- Source: `codercahol/blog`; working branch: `revamp`.
- Existing Pages workflow deploys pushes to `main`.

## Public content

- `index.html`: current efforts, user-supplied biography, interests, and contact links.
- `BiTSconceptnote.html`: stable `/BiTSconceptnote` destination.
- `questions.md`, `work.md`, `tinkering.md`, `adventures.md`, `bookshelf.md`: retained secondary pages.
- `_layouts/personal.html`, `_layouts/content.html`, `assets/css/personal.css`: shared presentation.
- `_plugins/legacy_routes.rb`: former content addresses point to the homepage.
- `404.html`: matching error page.

## Numbered iterations

The main URL serves the current site. Frozen builds preserve these iterations:

- `/2/`: “Toward cheaper, more programmable manufacturing” (`952fc6f`).
- `/3/`: the current Coherent Matter Moonshot and materials-testing design.
- `/4/`: the minimal design with the manufacturing headline and revised introduction.

Iteration 1 was removed. Earlier subversions of iteration 3 were not saved in Git;
the available `/3/` snapshot preserves the current design.

Each snapshot includes its own pages, styles, fonts, and images. For example,
`/2/about` redirects to `/2/about/`, which serves the original About page.
Links within a snapshot stay under its number. The iteration navigation keeps
the same page when switching versions, falling back to that version’s homepage
when the page is unavailable. Archived pages have `noindex` metadata.

The numeric directories contain built static files, so ordinary builds need no
historical theme dependencies or Git history. `_plugins/iterations.rb` adds the
version switcher after each build using `_data/iterations.yml`.

To preserve another iteration, build the site, run
`python3 bin/snapshot 5 --source _site` with the next unused number, and add its
number, label, and source to `_data/iterations.yml`. The snapshot command refuses
to overwrite an existing version and skips other numbered directories. Run
`bin/check` afterward to verify the build, nested pages, and internal links.

## Frozen reference — excluded from public output

- `_reference/website-evidence.md`: terse facts, links, source provenance,
  pending verification, and clearly marked unverified inventory.
- `_reference/originals/`: original 2021 posts, biography/config and existing photo.
- Prior expanded portfolio copy remains recoverable from commit `952fc6f`.
- The current site excludes essay bodies, the old feed, theme styles/fonts,
  and archive plugins. Numbered snapshots retain their earlier public content
  and assets. Selected current secondary pages use concise homepage-style copy.
- `_reference/bio-2026-10-28.md`: the newly supplied bio source; the frozen
  evidence snapshot remains unchanged.
- No specific trips/photos have been supplied for the travel/outdoors page.

## Concept-note release / updates

The confirmed public PDF is still missing. Development displays a pending-document
notice; production builds fail rather than publish that notice.

1. Obtain the author's confirmed public release. Do not substitute an application
   PDF or annotated draft. The homepage biography and degree wording follow the
   author's subsequently supplied bio.
2. Add the PDF under `assets/documents/` with a new versioned filename each
   release, e.g. `cmm-concept-note-YYYY-MM-DD.pdf`. Never overwrite an old asset.
3. Update `_data/concept_note.yml`: `confirmed: true`, root-relative `pdf` URL,
   actual title, and version/date if supplied by the document. Leave unknowns blank.
4. Run `bin/check` and `JEKYLL_ENV=production bin/build`. Verify desktop/mobile,
   direct navigation and refresh at `/BiTSconceptnote`, inline viewing, Open PDF,
   Download PDF, and fallback links before release.
5. After deployment, check the exact domain address signed out. A trailing-slash
   redirect is acceptable. Confirm the asset returns `application/pdf` and intended
   bytes; the download link uses the same-origin HTML download attribute.

Do not place confidential drafts in public asset directories. Both `_reference/`
and `codex_instructions/` are explicitly excluded from the generated site.
