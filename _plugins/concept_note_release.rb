# Never publish the local-only placeholder as the finished concept-note page.
Jekyll::Hooks.register :site, :post_read do |site|
  next unless Jekyll.env == "production"

  note = site.data["concept_note"] || {}
  path = note["pdf"].to_s
  file = File.expand_path(path.sub(%r{\A/}, ""), site.source)
  valid = note["confirmed"] == true &&
    path.start_with?("/assets/documents/") && path.end_with?(".pdf") &&
    file.start_with?(File.join(site.source, "assets", "documents") + "/") &&
    File.file?(file) && File.binread(file, 5) == "%PDF-"
  unless valid
    raise Jekyll::Errors::FatalException,
      "Concept-note release blocked: confirm the public PDF in _data/concept_note.yml and add its versioned asset."
  end
end
