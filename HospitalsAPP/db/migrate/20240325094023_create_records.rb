# frozen_string_literal: true

class CreateRecords < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :records do |t|
      t.string :record_id
      t.string :conclusion

      t.timestamps
    end
  end
end
