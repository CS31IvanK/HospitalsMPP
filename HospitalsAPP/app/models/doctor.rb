class Doctor < ApplicationRecord
  belongs_to :hospital, foreign_key: "hos_id", primary_key: "rank" #???
  #validation
  validates :email, format: { with: /\A[\w+\-.]+@karazin\.ua\z/,
                              message: "must be a karazin.ua account" }
end