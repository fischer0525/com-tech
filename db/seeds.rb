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
  Basket.destroy_all
  Zapple.destroy_all

  apple1 = Apple.create!(title: "Macintosh", quantity: 20)
  orange1 = Orange.create!(title: "Navel", quantity: 20)
  basket1 = Basket.create!(capacity: 2, fill_rate: "0")
  basket2 = Basket.create!(capacity: 27, fill_rate: "0")
  basket3 = Basket.create!(capacity: 5, fill_rate: "0")
  basket4 = Basket.create!(capacity: 18, fill_rate: "0")
  basket5 = Basket.create!(capacity: 9, fill_rate: "0")
  zapple1 = Zapple.create!(basket: basket1, variety: "Gala")
  zapple2 = Zapple.create!(basket: basket2, variety: "Jazz")
  zapple3 = Zapple.create!(basket: basket3, variety: "Honeycrisp")
  zapple4 = Zapple.create!(basket: basket3, variety: "Honeycrisp")
  zapple5 = Zapple.create!(basket: basket3, variety: "Honeycrisp")
  zapple6 = Zapple.create!(basket: basket3, variety: "Honeycrisp")
  zapple7 = Zapple.create!(basket: basket3, variety: "Honeycrisp")
  zapple8 = Zapple.create!(basket: basket4, variety: "Jazz")
end
