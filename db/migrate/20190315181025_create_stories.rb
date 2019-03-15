class CreateStories < ActiveRecord::Migration
  def change
  create_table :stories do |t|
    t.string :title
    t.string :description
    t.string :visual_content
    t.integer :user_id
    t.string :audio
    t.string :transcript
  end
end
end
