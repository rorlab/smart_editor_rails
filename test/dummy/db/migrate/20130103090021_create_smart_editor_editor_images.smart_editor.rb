# This migration comes from smart_editor (originally 20130101074444)
class CreateSmartEditorEditorImages < ActiveRecord::Migration
  def change
    create_table :smart_editor_editor_images do |t|
      t.string :file
      t.integer :attachable_id
      t.integer :attachable_type
      t.timestamps
    end
  end
end
