require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

url = 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic'
cocktails_serialized = open(url).read
cocktails = JSON.parse(cocktails_serialized)

cocktails["drinks"].each do |cocktail|
  Cocktail.create(name: cocktail["strDrink"])
end
