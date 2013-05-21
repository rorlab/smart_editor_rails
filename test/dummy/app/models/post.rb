class Post < ActiveRecord::Base
  # attr_accessible :desc, :image, :title
  # has_smart_editor
  has_editor_images
end
