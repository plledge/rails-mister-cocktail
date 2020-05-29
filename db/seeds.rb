# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Mojito")

require 'json'
require 'rest-client'



# records = JSON.parse(RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'))

# records.each do |ing|
#   Ingredient.create(name: ing[0].value)
# end

# check json parse lessons