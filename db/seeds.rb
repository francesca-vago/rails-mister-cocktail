require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

parsed_ingredients = open(url).read
ingredients = JSON.parse(parsed_ingredients)["drinks"]

ingredients.each do |ingredient|
  Ingredient.create(
    name: ingredient["strIngredient1"]
    )
end
