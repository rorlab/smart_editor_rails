$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "smart_editor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "smart_editor"
  s.version     = SmartEditor::VERSION
  s.authors     = "Younghun Choi"
  s.email       = "zerohun@goodoc.co.kr"
  s.homepage    = "https://github.com/zerohun/smart_editor_rails"
  s.summary     = "Rails gem for smart_editor"
  s.description = "gem to use WYSIWYG editor for rails user"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "carrierwave"
  # s.add_dependency "jquery-rails"
  s.add_runtime_dependency 'execjs'

  s.add_development_dependency "sqlite3"
end
