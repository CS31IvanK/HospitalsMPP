# frozen_string_literal: true

class AddUserToDoctors < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_reference :doctors, :user, null: true, foreign_key: true # null: false
  end
end
