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
  l = List.find_or_create_by(contents: row[2], grade_number: row[0], number: row[1])
  Word.create!([{text: row[3], list: l, word_type: row[4]}])
end
CSV.foreach(Rails.root + 'db/Spelling Seeds - 4th Grade.csv', :headers => true) do |row|
  l = List.find_or_create_by(contents: row[2], grade_number: row[0], number: row[1])
  Word.create!([{text: row[3], list: l, word_type: row[4]}])
end
CSV.foreach(Rails.root + 'db/Spelling Seeds - 3rd Grade.csv', :headers => true) do |row|
  l = List.find_or_create_by(contents: row[2], grade_number: row[0], number: row[1])
  Word.create!([{text: row[3], list: l, word_type: row[4]}])
end
CSV.foreach(Rails.root + 'db/Spelling Seeds - 2nd Grade.csv', :headers => true) do |row|
  l = List.find_or_create_by(contents: row[2], grade_number: row[0], number: row[1])
  Word.create!([{text: row[3], list: l, word_type: row[4]}])
end
CSV.foreach(Rails.root + 'db/Spelling Seeds - 1st Grade.csv', :headers => true) do |row|
  l = List.find_or_create_by(contents: row[2], grade_number: row[0], number: row[1])
  Word.create!([{text: row[3], list: l, word_type: row[4]}])
end
