# frozen_string_literal: true

class Hospital < ApplicationRecord # rubocop:todo Style/Documentation
  has_many :medical_cards
  has_many :doctors, foreign_key: 'hos_id', primary_key: 'rank'

  def self.ransackable_attributes(auth_object = nil)
    %w[city country id name rank url]
  end
end
