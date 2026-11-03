# leronperez.com

Two current efforts: Coherent Matter Moonshot and a stealth startup accelerating
materials testing. Jekyll with local styles and project tabs; GitHub Pages hosting.

## Local workflow

- Ruby: `.ruby-version`; Bundler: `Gemfile.lock`.
- `bin/setup`: install dependencies into ignored `vendor/bundle`.
- `bin/serve`: preview at http://127.0.0.1:4000.
- `bin/check`: whitespace check and development build.
- `JEKYLL_ENV=production bin/build`: release build.
- Source: `codercahol/blog`; publishing branch: `streamlined-publish`.
- Existing Pages workflow deploys pushes to `main`.

## Public content

- `index.html`: masthead, headline, and separate editable project panels.
- `about.html`: biography placeholder at `/about/`, linked from the masthead.
- `BiTSconceptnote.html`: stable `/BiTSconceptnote` destination.
- `_layouts/personal.html`, `assets/css/personal.css`: shared presentation.
- `assets/css/homepage.css`, `assets/js/project-tabs.js`: homepage layout and accessible tabs.
- `assets/fonts/`: self-hosted Literata font and its redistribution license.
- The homepage links to About, email, GitHub, LinkedIn, and the concept note.
- Secondary pages and legacy route pages are removed on this branch.
- `404.html`: matching error page.

## Publishing branch

`streamlined-publish` contains the streamlined current site with the preferred
manufacturing headline. Numbered snapshots and version navigation
are saved on the separate `iterative-multi-view` branch and are absent here.

Run `bin/check` for the development build and local-link checks, then
`JEKYLL_ENV=production bin/build` for the release build. The concept-note PDF
requirement below must be resolved before publishing. This branch is not deployed
by a push: the existing workflow deploys `main` or an explicitly dispatched run.

## Earlier material

Historical references and earlier website iterations are preserved on
`iterative-multi-view`. This branch builds only the homepage, About, concept note,
and error page. Local drafts and handoff notes are excluded from public output.

## Concept-note release / updates

The concept note uses the author-supplied Papermark embed. Its URL, title, author,
and confirmation flag live in `_data/concept_note.yml`. Production requires
`confirmed: true` and a valid `https://app.papermark.com/view/<id>/embed` URL.

To replace the document, update `embed_url` to the confirmed public release.
Keep title, version, and date consistent with the document; leave unknowns blank.
Run `bin/check` and `JEKYLL_ENV=production bin/build`, then verify the embedded
viewer, fullscreen action, and fallback link at `/BiTSconceptnote/`.
The fallback opens the document directly on Papermark in a new tab.

Do not place confidential drafts in public asset directories. Reference and local
instruction directories remain excluded from the generated site if restored.
