class AddAppointmentDateToMedicalCards < ActiveRecord::Migration[7.1]
  def change
    add_column :medical_cards, :appointment_date, :datetime
  end
end
