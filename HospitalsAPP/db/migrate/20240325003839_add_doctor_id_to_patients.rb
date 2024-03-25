class AddDoctorIdToPatients < ActiveRecord::Migration[7.1]
  def change
    add_column :patients, :doctor_id, :integer
  end
end
