class AddTypeToWords < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :word_type, :integer
  end
end
