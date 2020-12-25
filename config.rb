Time.zone = 'America/Los_Angeles'
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

config[:js_dir] = 'assets/javascripts'

configure :development do
  config[:host] = 'localhost:4567'
  set :debug_assets, true
  activate :livereload
end

activate :external_pipeline,
  name: :webpack,
  command: build? ? 'npm run build' : 'npm run start',
  source: '.tmp/dist',
  latency: 1

activate :blog do |blog|
  blog.default_extension = '.md'
  blog.layout = 'blog_post_layout'
  blog.prefix = 'blog'
end

activate :meta_tags
activate :directory_indexes

configure :build do
  config[:host] = 'https://mywebsite.com'
  activate :favicon_maker do |f|
    f.template_dir  = 'source/images'
    f.output_dir = 'build/images/'
    f.icons = {
      "_favicon_template.png" => [
        { icon: "favicon.png", size: "16x16" },
        { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
      ]
    }
  end
  activate :imageoptim do |imgopt|
    imgopt.svgo = false
    imgopt.pngout = false
  end
  activate :autoprefixer do |prefix|
    prefix.browsers = 'last 2 versions'
  end
  activate :minify_css
  activate :minify_html
  activate :asset_hash
  activate :gzip
end
