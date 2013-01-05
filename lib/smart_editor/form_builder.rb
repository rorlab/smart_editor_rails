module ActionView
  module Helpers
    class FormBuilder
      def editor_image_field
        method = "editor_image_ids"
        options = {:value => "[]", :class => "image_ids"}
        hidden_field(method, options)
      end
    end
  end
end
