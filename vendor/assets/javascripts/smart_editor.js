//= require HuskyEZCreator

var oEditors = [];
$(document).ready(function(event){
  if($(".smart-editor-text-area").length > 0){
    var $smartEditorTextArea = $(".smart-editor-text-area")
    var textAreaId = $smartEditorTextArea.attr("id");
    var $submitButton = $(".smart-editor-text-area").parents("form").find("input[type='submit']")
    nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: textAreaId,
      sSkinURI: "/smart_editor/SmartEditor2Skin.html",
      fCreator: "createSEditor2"
    });
    $smartEditorTextArea.append("<input type='hidden' class='image_ids' value='[]'>")
    $submitButton.click(function(event){
      oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);
    });
  }
});
