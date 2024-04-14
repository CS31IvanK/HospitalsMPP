# frozen_string_literal: true

class AddMedCardToMedRecords < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_reference :medical_records, :medical_card, foreign_key: true
  end
end
