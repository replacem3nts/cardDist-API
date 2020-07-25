class AddPrescriberemailToRxs < ActiveRecord::Migration[6.0]
  def change
    add_column :rxes, :prescriberemail, :string
  end
end
