require "cgi"

# Frozen HTML is copied as static files. Add the same navigation to every
# rendered page after writing, so future iterations also appear on old pages.
Jekyll::Hooks.register :site, :post_write do |site|
  versions = site.data.fetch("iterations", [])
  next if versions.empty?

  base = site.baseurl.to_s.sub(%r{/$}, "")
  numbers = versions.map { |version| version.fetch("number").to_s }
  html_files = Dir.glob(File.join(site.dest, "**", "*.html"))
  paths = html_files.map { |file| file.delete_prefix(site.dest + "/") }

  html_files.each do |file|
    path = file.delete_prefix(site.dest + "/")
    parts = path.split("/")
    current = numbers.include?(parts.first) ? parts.shift : nil
    route = parts.join("/")
    links = [[nil, "Latest", "Current website"]] + versions.map do |version|
      [version.fetch("number").to_s, version.fetch("number").to_s, version.fetch("label")]
    end
    items = links.map do |number, label, description|
      target = [number, route].compact.join("/")
      target = [number, "index.html"].compact.join("/") unless paths.include?(target)
      url = base + "/" + target.sub(%r{index\.html$}, "")
      selected = number == current ? ' aria-current="page"' : ""
      %(<a href="#{CGI.escapeHTML(url)}" title="#{CGI.escapeHTML(description)}"#{selected}>#{label}</a>)
    end
    nav = %(<nav class="iteration-nav" aria-label="Website iterations"><span>Iterations</span>#{items.join}</nav>)
    html = File.read(file)
    # Idempotent for repeated builds or snapshots made from generated output.
    html.sub!(/<!-- iterations:start -->.*?<!-- iterations:end -->\s*/m, "")
    html.sub!(%r{<link rel="stylesheet" href="[^"]*/assets/css/iterations\.css">\s*}, "")
    html.sub!(%r{</head>}i, %(<link rel="stylesheet" href="#{base}/assets/css/iterations.css">\n</head>))
    html.sub!(/<body\b[^>]*>/i) { |body| body + "\n<!-- iterations:start -->#{nav}<!-- iterations:end -->\n" }
    File.write(file, html)
  end
end
