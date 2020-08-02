class AddRxcodeToRxes < ActiveRecord::Migration[6.0]
  def change
    add_column :rxes, :rxcode, :string
  end
end
