$: << File.dirname(__FILE__) + "/lib"

Gem::Specification.new do |spec|
  spec.name           = "tpitale-rack-oauth2-server"
  spec.version        = IO.read("VERSION")
  spec.author         = "Assaf Arkin"
  spec.email          = "assaf@labnotes.org"
  spec.homepage       = "http://github.com/flowtown/#{spec.name}"
  spec.summary        = "OAuth 2.0 Authorization Server as a Rack module for ActiveRecord"
  spec.description    = "Because you don't allow strangers into your app, and OAuth 2.0 is the new awesome."
  spec.post_install_message = "To get started, run the command oauth2-server"

  spec.files          = Dir["{bin,lib,rails,test}/**/*", "CHANGELOG", "VERSION", "MIT-LICENSE", "README.rdoc", "Rakefile", "Gemfile", "*.gemspec"]
  spec.executable     = "oauth2-server"

  spec.extra_rdoc_files = "README.rdoc", "CHANGELOG"
  spec.rdoc_options     = "--title", "tpitale-rack-oauth2-server #{spec.version}", "--main", "README.rdoc",
                          "--webcvs", "http://github.com/tpitale/rack-oauth2-server"
  spec.license          = "MIT"

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_dependency "rack", "~>1.1"
  spec.add_dependency "rails", ">= 2.3.11"
end
