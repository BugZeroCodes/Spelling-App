require 'csv'
Word.destroy_all
List.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CSV.foreach(Rails.root + 'db/Spelling Seeds - 5th Grade.csv', :headers => true) do |row|
  next if row[2].blank?
  l = List.find_or_create_by(id: row[1])
  Word.create!([{text: row[2], list: l, word_type: 2}])
end
