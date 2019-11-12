class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :title, null: false
      t.text :description
      t.string :link_url
      t.string :image_url, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :pins, :user_id
  end
end
