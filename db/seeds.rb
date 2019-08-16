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

whiskey_smash = Cocktail.create(name: "Whiskey Smash", image_url: "https://images.unsplash.com/photo-1560508179-1a308735759c?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
pink_bellini = Cocktail.create(name: "Pink Bellini", image_url: "https://images.unsplash.com/photo-1516685387825-bf3a3dbfbbd4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
margarita = Cocktail.create(name: "Margarita", image_url: "https://images.unsplash.com/photo-1516684163977-84cc7de8c7c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")

