# frozen_string_literal: true

class AddUserToPatients < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_reference :patients, :user, null: true, foreign_key: true # null: false
  end
end
