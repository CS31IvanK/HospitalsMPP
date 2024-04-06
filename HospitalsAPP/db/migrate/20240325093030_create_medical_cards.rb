# frozen_string_literal: true

class CreateMedicalCards < ActiveRecord::Migration[6.0] # rubocop:todo Style/Documentation
  def change
    create_table :medical_cards do |t|
      t.integer :medical_card_id
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :hospital, foreign_key: true
      t.string :diagnosis

      t.timestamps
    end
  end
end
