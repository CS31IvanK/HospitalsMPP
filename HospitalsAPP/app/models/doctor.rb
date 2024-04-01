class Doctor < ApplicationRecord
  has_many :medical_cards
  has_many :records
  belongs_to :user, foreign_key: "user_id"
  #has_many :patients
  belongs_to :hospital, foreign_key: "hos_id", primary_key: "rank" #???
  #validation
  validates :dphone, format: { with: /\A?0\d{9}\z/,
                               message: "must be a valid phone number" }
  
end