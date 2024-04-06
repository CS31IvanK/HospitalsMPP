# frozen_string_literal: true

class Hospital < ApplicationRecord # rubocop:todo Style/Documentation
  has_many :medical_cards
  has_many :doctors, foreign_key: 'hos_id', primary_key: 'rank'
end
