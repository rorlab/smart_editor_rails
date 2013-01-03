require "smart_editor/engine"
require "smart_editor/class_methods"

module SmartEditor
  def self.bind_editor_images(controller, model_name, actions)
    controller.class_eval <<-eos
      before_filter :_bind_image, :only => [#{actions.map{|a| ":#{a}" } .join(",")}]
      def _bind_image
        if params[:#{model_name}][:editor_image_ids] == "[]" or params["#{model_name}"]["editor_image_ids"].blank?
          params[:#{model_name}].delete("editor_image_ids") 
        else
          params[:#{model_name}][:editor_image_ids] = params[:#{model_name}][:editor_image_ids].gsub('[','').sub(']','').split(",")
        end
      end
    eos
  end
end
