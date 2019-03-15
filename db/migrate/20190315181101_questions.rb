class Questions < ActiveRecord::Migration
  def change
  create_table :questions do |t|
    t.string :text
    t.integer :story_id
  end
end
end
