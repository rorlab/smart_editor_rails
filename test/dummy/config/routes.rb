Rails.application.routes.draw do

  mount SmartEditor::Engine => '/smart_editor'

  resources :posts


  mount SmartEditor::Engine => "/smart_editor"
end
