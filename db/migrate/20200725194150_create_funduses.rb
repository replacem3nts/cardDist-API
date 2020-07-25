class CreateFunduses < ActiveRecord::Migration[6.0]
  def change
    create_table :funduses do |t|
      t.string :kind

      t.timestamps
    end
  end
end
