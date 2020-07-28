class AddNotesToRxes < ActiveRecord::Migration[6.0]
  def change
    add_column :rxes, :notes, :text
    change_column_default :rxes, :hc_id, 1
    change_column_default :rxes, :amount, 300
    change_column_default :rxes, :pickedup, false
    change_column_default :rxes, :loaded, false
  end
end
