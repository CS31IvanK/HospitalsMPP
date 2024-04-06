# frozen_string_literal: true

class MedicalRecord < ApplicationRecord # rubocop:todo Style/Documentation
  belongs_to :medical_card
end
