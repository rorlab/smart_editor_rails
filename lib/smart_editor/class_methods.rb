module ActiveRecord
  module Associations
    module ClassMethods
      def has_smart_editor
        has_many :editor_images, :as => :attachable, :class_name => "SmartEditor::EditorImage", :dependent => :destroy 
      end
    end
  end
end
