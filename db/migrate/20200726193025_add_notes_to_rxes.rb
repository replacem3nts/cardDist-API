class AddNotesToRxes < ActiveRecord::Migration[6.0]
  def change
    add_column :rxes, :notes, :text
  end
end
