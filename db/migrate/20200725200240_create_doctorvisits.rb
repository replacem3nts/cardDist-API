class CreateDoctorvisits < ActiveRecord::Migration[6.0]
  def change
    create_table :doctorvisits do |t|
      t.string :kind

      t.timestamps
    end
  end
end
