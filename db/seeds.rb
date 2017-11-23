require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredient_json = open(url).read
ingredient_json = JSON.parse(ingredient_json)

ingredient_json['drinks'].each do |ingredient|
 ingredient["strIngredient1"]
 Ingredient.create(name: ingredient["strIngredient1"])
end
