class AddDoctorAndPatientToConversations < ActiveRecord::Migration[7.1]
  def change
    add_reference :conversations, :doctor, null: false, foreign_key: true
    add_reference :conversations, :patient, null: false, foreign_key: true
  end
end
