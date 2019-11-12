class UpdateColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :url, :string
  end
end
