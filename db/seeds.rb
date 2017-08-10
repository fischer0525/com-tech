# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development? || Rails.env.production?

  Apple.destroy_all
  Orange.destroy_all


  apple1 = Apple.create!(title: "Macintosh", quantity: 20)
  apple2 = Apple.create!(title: "Gala", quantity: 5)
  orange1 = Orange.create!(title: "Navel", quantity: 20)
  orange2 = Orange.create!(title: "Blood", quantity: 8)
end
