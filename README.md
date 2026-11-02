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
- `BiTSconceptnote.html`: stable `/BiTSconceptnote` destination.
- `_layouts/personal.html`, `assets/css/personal.css`: shared presentation.
- `assets/css/homepage.css`, `assets/js/project-tabs.js`: homepage layout and accessible tabs.
- `assets/fonts/`: self-hosted Literata font and its redistribution license.
- The homepage links only to email, GitHub, LinkedIn, and the concept note.
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
`iterative-multi-view`. This branch builds only the homepage, concept note,
and error page. Local drafts and handoff notes are excluded from public output.

## Concept-note release / updates

The confirmed public PDF is still missing. Development displays a pending-document
notice; production builds fail rather than publish that notice.

1. Obtain the author's confirmed public release. Do not substitute an application
   PDF or annotated draft.
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

Do not place confidential drafts in public asset directories. Reference and local
instruction directories remain excluded from the generated site if restored.
