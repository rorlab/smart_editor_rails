SmartEditor::Engine.routes.draw do
  resources :editor_images do
    post "create_for_html5", :on => :collection
    post "create_without_html5", :on => :collection
  end
 
end
