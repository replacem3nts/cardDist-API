class AddEmailToPrescribers < ActiveRecord::Migration[6.0]
  def change
    add_column :prescribers, :email, :string
  end
end
