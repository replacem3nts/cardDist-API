class CreateCovidimpacts < ActiveRecord::Migration[6.0]
  def change
    create_table :covidimpacts do |t|
      t.string :kind

      t.timestamps
    end
  end
end
