# frozen_string_literal: true

class RemoveDockFromPatient < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    remove_column :patients, :doc_id
  end
end
