class Patient < ApplicationRecord
  belongs_to :doctor
  validates :diagnosis, presence: true
end