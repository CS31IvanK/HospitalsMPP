class Doctor < ApplicationRecord
  belongs_to :hospital, foreign_key: "hos_id", primary_key: "hid"
end