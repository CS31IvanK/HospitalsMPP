class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role:{patient: 0, doctor: 1}
  before_validation :set_role
  has_one :doctor, foreign_key: "dock_id", primary_key: "id"

  #validates :email, format: { with: /\A[\w+\-.]+@karazin\.ua\z/,
  #                           message: "must be a karazin.ua account" }

  private
  def set_role
    self.role = email.ends_with?('@karazin.ua') ? :doctor : :patient
  end
end
