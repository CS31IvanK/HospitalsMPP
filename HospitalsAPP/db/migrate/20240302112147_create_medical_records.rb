# frozen_string_literal: true

class CreateMedicalRecords < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :medical_records do |t|
      t.integer :mrec_id
      t.datetime :date
      t.string :problem
      t.integer :pat_id
      t.integer :doc_id

      t.timestamps
    end
  end
end
