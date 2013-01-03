Rails.application.routes.draw do

  resources :posts


  mount SmartEditor::Engine => "/smart_editor"
end
