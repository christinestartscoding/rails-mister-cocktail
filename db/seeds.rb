require 'open-uri'
require 'JSON'

puts "Cleaning ingredients"
Ingredient.destroy_all

puts "API call"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients_raw = JSON.parse(ingredients_serialized)
ingredients = []

puts "Generating ingredients array"
ingredients_raw['drinks'].each do |ingredient|
  ingredients << ingredient["strIngredient1"]
end

puts "Generating ingredients"
10.times do
  ingredient = Ingredient.create(name: ingredients.sample)
  p ingredient
end

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Gin and tonic")

Dose.create(description: "The Mojito cocktail needs 6cl of lemon")
