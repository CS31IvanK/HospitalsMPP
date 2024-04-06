# frozen_string_literal: true

class AddAttendedToMedicalCards < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :medical_cards, :attended, :boolean, default: false
  end
end
