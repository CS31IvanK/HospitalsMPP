# frozen_string_literal: true

class AddDockToRecord < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :records, :dock_id, :integer
    add_index :records, :dock_id
  end
end
