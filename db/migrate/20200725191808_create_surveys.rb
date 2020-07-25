class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.belongs_to :rx, null: false, foreign_key: true
      t.integer :age
      t.string :gender
      t.integer :hhsize
      t.integer :hhfamilies
      t.string :zipcode
      t.string :mixedstatus

      t.timestamps
    end
  end
end
