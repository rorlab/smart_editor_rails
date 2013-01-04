require 'rails/generators'
require 'rails/generators/rails/app/app_generator'
require 'rails/version'

module SmartEditor
  class SmartEditorGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    def copy_temeplate_files
      directory 'public'
      route("mount SmartEditor::Engine => '/smart_editor'")
    end

    def copy_migraiton_file
      exec "bundle exec rake smart_editor:install:migrations"
    end

  end
end
