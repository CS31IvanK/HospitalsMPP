class AddBodyToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :body, :text
  end
end
