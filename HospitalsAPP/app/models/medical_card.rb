# frozen_string_literal: true

class MedicalCard < ApplicationRecord # rubocop:todo Style/Documentation
  belongs_to :patient
  # belongs_to :doctor
  belongs_to :hospital
  has_many :records
end
