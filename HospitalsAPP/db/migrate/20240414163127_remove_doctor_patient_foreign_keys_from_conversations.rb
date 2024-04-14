class RemoveDoctorPatientForeignKeysFromConversations < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :conversations, :doctors
    remove_foreign_key :conversations, :patients
    add_foreign_key :conversations, :users, column: :doctor_id
    add_foreign_key :conversations, :users, column: :patient_id
  end
end
