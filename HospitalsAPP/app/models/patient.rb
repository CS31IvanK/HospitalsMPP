# frozen_string_literal: true

class Patient < ApplicationRecord # rubocop:todo Style/Documentation
  has_many :medical_cards
  has_many :records
  belongs_to :user
  # belongs_to :doctor
  # validates :diagnosis, presence: true # useless

  def self.ransackable_attributes(auth_object = nil)
    ["age", "created_at", "id", "id_value", "padress", "pat_id", "pname", "pphone", "updated_at", "user_id"]
  end
end
