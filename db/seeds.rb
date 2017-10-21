# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'sample user', email: "user@example.com", password: "password")

d = Dataset.new(name: 'test dataset', documentation: 'nothing to see here')
File.open('test.csv') do |f|
  d.datafile = f
end
d.save!