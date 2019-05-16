Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [
  {
    name: 'Pina Colada'
  },

  {
    name: 'Colonel'
  },

  {
    name: 'Planteur'
  },

  {
    name: 'Bikini Bottom'
  },

  {
    name: 'Bob'
  },

  {
    name: 'Bloody Mary'
  }
]

ingredients = %w(lemon ice mint leaves)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }

cocktails.each { |cocktail| Cocktail.create(cocktail) }
