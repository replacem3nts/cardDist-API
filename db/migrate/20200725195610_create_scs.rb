class CreateScs < ActiveRecord::Migration[6.0]
  def change
    create_table :scs do |t|
      t.belongs_to :survey, null: false, foreign_key: true
      t.belongs_to :covidimpact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
