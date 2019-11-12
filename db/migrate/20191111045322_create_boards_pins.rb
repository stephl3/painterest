class CreateBoardsPins < ActiveRecord::Migration[5.2]
  def change
    create_table :boards_pins do |t|
      t.integer :pin_id, null: false
      t.integer :board_id, null: false
      t.timestamps
    end

    add_index :boards_pins, :pin_id
    add_index :boards_pins, :board_id
    add_index :boards_pins, [:board_id, :pin_id], unique: true
  end
end
