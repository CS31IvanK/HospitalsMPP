# frozen_string_literal: true

class AddRoleToUsers < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :users, :role, :integer
  end
end
