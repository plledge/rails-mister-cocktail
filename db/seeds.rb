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


require 'json'
require 'rest-client'
require 'open-uri'

#  file = URI.open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
# records = JSON.parse(file)

# records.each do |ing|
#   Ingredient.create(name: ing[0].value)
# end

# check json parse lessons

# MARASCHINO CHERRIES
# MINT LEAVES
# BITTERS
# SUGAR
# ICE
# ORANGES
# EGGS
# LEMON
# LIME
# SYRUP
# SALT AND PEPPER