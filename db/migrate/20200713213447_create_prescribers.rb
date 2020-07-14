class CreatePrescribers < ActiveRecord::Migration[6.0]
  def change
    create_table :prescribers do |t|
      t.belongs_to :cbo, null: false, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :tel

      t.timestamps
    end
  end
end
