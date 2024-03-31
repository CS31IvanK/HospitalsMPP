class Patient < ApplicationRecord
  has_many :medical_cards
  has_many :records
  #belongs_to :doctor
  #validates :diagnosis, presence: true # useless
end