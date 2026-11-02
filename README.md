# leronperez.com

Two current efforts: Coherent Matter Moonshot and a stealth startup accelerating
materials testing. Jekyll + one local layout/CSS file; GitHub Pages hosting.

## Local workflow

- Ruby: `.ruby-version`; Bundler: `Gemfile.lock`.
- `bin/setup`: install dependencies into ignored `vendor/bundle`.
- `bin/serve`: preview at http://127.0.0.1:4000.
- `bin/check`: whitespace check and development build.
- `JEKYLL_ENV=production bin/build`: release build.
- Source: `codercahol/blog`; publishing branch: `streamlined-publish`.
- Existing Pages workflow deploys pushes to `main`.

## Public content

- `index.html`: current efforts, user-supplied biography, interests, and contact links.
- `BiTSconceptnote.html`: stable `/BiTSconceptnote` destination.
- `questions.md`, `work.md`, `tinkering.md`, `adventures.md`, `bookshelf.md`: retained secondary pages.
- `_layouts/personal.html`, `_layouts/content.html`, `assets/css/personal.css`: shared presentation.
- `_plugins/legacy_routes.rb`: former content addresses point to the homepage.
- `404.html`: matching error page.

## Publishing branch

`streamlined-publish` contains the streamlined current site with the preferred
manufacturing headline and introduction. Numbered snapshots and version navigation
are saved on the separate `iterative-multi-view` branch and are absent here.

Run `bin/check` for the development build and local-link checks, then
`JEKYLL_ENV=production bin/build` for the release build. The concept-note PDF
requirement below must be resolved before publishing. This branch is not deployed
by a push: the existing workflow deploys `main` or an explicitly dispatched run.

## Frozen reference — excluded from public output

- `_reference/website-evidence.md`: terse facts, links, source provenance,
  pending verification, and clearly marked unverified inventory.
- `_reference/originals/`: original 2021 posts, biography/config and existing photo.
- Prior expanded portfolio copy remains recoverable from commit `952fc6f`.
- The current site excludes essay bodies, the old feed, theme styles/fonts,
  and archive plugins. Selected current secondary pages use concise homepage-style copy.
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
