class AddNumberToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :number, :integer
  end
end
