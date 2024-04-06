# frozen_string_literal: true

class AddFieldsToHospitals < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change # rubocop:todo Metrics/MethodLength
    add_column :hospitals, :rank, :integer
    add_column :hospitals, :name, :string
    add_column :hospitals, :url, :string
    add_column :hospitals, :country, :string
    add_column :hospitals, :city, :string
    remove_column :hospitals, :hid, :integer
    remove_column :hospitals, :hname, :string
    remove_column :hospitals, :haddress, :string
    remove_column :hospitals, :hphone, :string
    remove_column :hospitals, :created_at, :datetime
    remove_column :hospitals, :updated_at, :datetime
    remove_column :hospitals, :phone, :string
  end
end
