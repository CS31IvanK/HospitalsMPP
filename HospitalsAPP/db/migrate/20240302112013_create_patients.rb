class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.integer :pat_id
      t.string :pname
      t.string :padress
      t.string :pphone
      t.integer :age
      t.integer :doc_id

      t.timestamps
    end
  end
end
