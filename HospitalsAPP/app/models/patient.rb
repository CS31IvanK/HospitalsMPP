# frozen_string_literal: true

class Patient < ApplicationRecord # rubocop:todo Style/Documentation
  has_many :medical_cards
  has_many :records
  belongs_to :user
  # belongs_to :doctor
  # validates :diagnosis, presence: true # useless
end
