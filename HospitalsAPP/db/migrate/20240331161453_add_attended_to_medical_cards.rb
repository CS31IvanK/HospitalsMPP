class AddAttendedToMedicalCards < ActiveRecord::Migration[7.1]
  def change
    add_column :medical_cards, :attended, :boolean, default: false
  end
end
