class AddDiagnosisToPatients < ActiveRecord::Migration[7.1]
  def change
    add_column :patients, :diagnosis, :string
  end
end
