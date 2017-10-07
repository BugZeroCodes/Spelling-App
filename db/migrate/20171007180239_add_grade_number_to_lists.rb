class AddGradeNumberToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :grade_number, :integer
  end
end
