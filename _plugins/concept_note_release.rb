# Never publish the local-only placeholder as the finished concept-note page.
Jekyll::Hooks.register :site, :post_read do |site|
  next unless Jekyll.env == "production"

  note = site.data["concept_note"] || {}
  # A confirmed public Papermark document replaces the former local-PDF asset.
  valid = note["confirmed"] == true &&
    note["embed_url"].to_s.match?(%r{\Ahttps://app\.papermark\.com/view/[A-Za-z0-9_-]+/embed\z})
  unless valid
    raise Jekyll::Errors::FatalException,
      "Concept-note release blocked: confirm the public Papermark embed in _data/concept_note.yml."
  end
end
