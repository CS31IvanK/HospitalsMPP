class CreateHospitals < ActiveRecord::Migration[7.1]
  def change
    create_table :hospitals do |t|
      t.integer :hid
      t.string :hname
      t.string :haddress
      t.string :hphone

      t.timestamps
    end
  end
end
