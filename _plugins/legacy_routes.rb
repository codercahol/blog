# Former content lives in the excluded reference archive; keep incoming links useful.
module Jekyll
  class LegacyRoutes < Generator
    def generate(site)
      routes = %w[notes programs posts categories tags blog/other blog/robustness]
      routes.each do |route|
        page = PageWithoutAFile.new(site, site.source, route, "index.html")
        page.data = { "layout" => "personal", "title" => "Leron Perez",
                      "excerpt" => "Leron Perez’s current work.",
                      "redirect_home" => true, "sitemap" => false }
        page.content = '<p><a href="{{ "/" | relative_url }}">Leron Perez — current work</a></p>'
        site.pages << page
      end
    end
  end
end
