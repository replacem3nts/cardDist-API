class ChangeDefaultValueForNotes < ActiveRecord::Migration[6.0]
  def change
    change_column_default :rxes, :cardserial, ''
    change_column_default :rxes, :notes, '-'
  end
end
