# frozen_string_literal: true

class AddAppointmentTypeToMedicalCards < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :medical_cards, :appointment_type, :string
  end
end
