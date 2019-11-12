class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image_url
    remove_column :pins, :image_url
    remove_column :pins, :link_url
  end
end
