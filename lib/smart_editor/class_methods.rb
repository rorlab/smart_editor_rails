module ActiveRecord
  module Associations
    module ClassMethods
      def has_editor_images
        has_many :editor_images, :as => :attachable, :class_name => "SmartEditor::EditorImage", :dependent => :destroy 
        attr_accessible :editor_image_ids
      end
    end
  end
end
