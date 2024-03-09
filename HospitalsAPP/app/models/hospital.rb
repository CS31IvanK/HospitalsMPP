class Hospital < ApplicationRecord
  attr_accessor :name, :address, :description
  has_many :doctors, foreign_key: "hos_id", primary_key: "hid"
end
