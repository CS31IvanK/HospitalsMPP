class MedicalCard < ApplicationRecord
  belongs_to :patient
  #belongs_to :doctor
  belongs_to :hospital
  has_many :records
end