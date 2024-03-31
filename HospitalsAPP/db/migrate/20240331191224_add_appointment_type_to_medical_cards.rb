class AddAppointmentTypeToMedicalCards < ActiveRecord::Migration[7.1]
  def change
    add_column :medical_cards, :appointment_type, :string
  end
end
