# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.hotwire.io"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  add "/", changefreq: "weekly"

  PageModel.all.each do |page|
    nest_level = page.request_path.split("/").count.to_f
    priority = nest_level.zero? ? 0.9 : (1 / nest_level)

    add page_path(resource_path: page.request_path), changefreq: "weekly", priority: priority
  end
end
