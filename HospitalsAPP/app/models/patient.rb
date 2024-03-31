class Patient < ApplicationRecord
  has_many :medical_cards
  #belongs_to :doctor
  #validates :diagnosis, presence: true # useless
end