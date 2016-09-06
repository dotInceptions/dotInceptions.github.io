set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

sprockets.append_path File.join root, 'bower_components'

configure :development do
  activate :livereload
end

activate :syntax

activate :livereload

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
  deploy.branch = "master"
end

configure :build do
  activate :relative_assets
end

activate :directory_indexes

# Per-page layout changes:
# page "/path/to/file.html", :layout => false
# page "/path/to/file.html", :layout => :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
