class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  validates :body, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["body", "conversation_id", "created_at", "id", "id_value", "updated_at", "user_id"]
  end
end
