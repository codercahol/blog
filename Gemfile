source "https://rubygems.org"

gem "jekyll", "~> 4.2"

# The site uses Minimal Mistakes plus local overrides for the masthead,
# homepage, and Tufte-style content formatting.
gem "minimal-mistakes-jekyll"

# jekyll-gist is a transitive dependency of Minimal Mistakes. Pinning Faraday 1
# avoids Octokit's Faraday 2 retry-middleware warning on local builds.
gem "faraday", "~> 1.10"

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-include-cache"
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
end

# Explicit for modern local Rubies; harmless on older Rubies that bundled it.
gem "webrick", "~> 1.8"
