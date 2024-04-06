# frozen_string_literal: true

class CreateDoctors < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :doctors do |t|
      t.integer :dock_id
      t.string :dname
      t.string :spec
      t.string :dphone
      t.integer :hos_id

      t.timestamps
    end
  end
end
