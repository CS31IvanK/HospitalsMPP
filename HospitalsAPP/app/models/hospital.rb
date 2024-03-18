class Hospital < ApplicationRecord
  has_many :doctors, foreign_key: "hos_id", primary_key: "rank"
end
