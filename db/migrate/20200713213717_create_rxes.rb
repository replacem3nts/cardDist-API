class CreateRxes < ActiveRecord::Migration[6.0]
  def change
    create_table :rxes do |t|
      t.belongs_to :cbo, null: false, foreign_key: true
      t.belongs_to :hc, null: false, foreign_key: true
      t.string :clienttel
      t.integer :amount
      t.string :language
      t.string :prescribername
      t.string :prescriberphone
      t.datetime :appt
      t.string :cardserial
      t.boolean :pickedup
      t.boolean :loaded
      t.timestamps
    end
  end
end
