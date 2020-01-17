class ChangePinTitleConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null :pins, :title, true
  end
end
