require_dependency "smart_editor/application_controller"

module SmartEditor
  class EditorImagesController < ApplicationController

    def index
    end

    def create_for_html5
      tempfile_path = Rails.root.join('public', 'uploads', request.headers["file-name"])
      File.open(tempfile_path, 'wb+') do |file|
        file.write(request.body.read)
      end
      uploaded_file = ActionDispatch::Http::UploadedFile.new :filename => request.headers["file-name"],
                                             :type => request.headers["file-type"],
                                             :tempfile => File.open(tempfile_path, 'r')
      @editor_image = SmartEditor::EditorImage.new(:file => uploaded_file)
      if @editor_image.save
        @result = true
        File.delete(tempfile_path)
        render :text => "iImageID=#{@editor_image.id}&sFileURL=#{@editor_image.file.url}&bNewLine=true"
      else
        @result = false
        render :text => "image upload failed"
      end
    end

    def create_without_html5

      @editor_image = SmartEditor::EditorImage.new(params[:editor_image])
      if @editor_image.save
        @result = true
        url = "#{params[:callback]}?callback_func=#{params[:callback_func]}&iImageID=#{@editor_image.id}&sFileURL=#{@editor_image.file.url}&bNewLine=true"
        redirect_to url
      else
        @result = false
      end
    end

  end
end
