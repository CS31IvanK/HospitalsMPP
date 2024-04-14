# frozen_string_literal: true

class AddUserToRecords < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :records, :pat_id, :integer
    add_index :records, :pat_id
  end
end
