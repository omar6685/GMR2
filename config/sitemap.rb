# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.gmr-recycling.com/"

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

  add root_path(locale: :en), :priority => 1, :changefreq => 'daily', :lastmod => Time.now
  add root_path(locale: :ar), :priority => 1, :changefreq => 'daily', :lastmod => Time.now
  add about_us_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add about_us_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add contact_us_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add contact_us_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add legal_notice_static_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add legal_notice_static_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add privacy_static_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add privacy_static_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add terms_and_conditions_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add terms_and_conditions_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add dashboard_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add dashboard_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add products_path(locale: :en), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  add products_path(locale: :ar), :priority => 0.7, :changefreq => 'weekly', :lastmod => Time.now
  I18n.available_locales.each do |locale|
    Product.find_each do |product|
      add product_path(locale: locale, id: product.id), lastmod: product.updated_at, changefreq: 'weekly', priority: 0.8
    end
  end
  

end
