class CreateHhmembers < ActiveRecord::Migration[6.0]
  def change
    create_table :hhmembers do |t|
      t.integer :age
      t.string :gender
      t.belongs_to :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
