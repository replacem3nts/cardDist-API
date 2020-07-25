class CreateSfs < ActiveRecord::Migration[6.0]
  def change
    create_table :sfs do |t|
      t.belongs_to :funduse, null: false, foreign_key: true
      t.belongs_to :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
