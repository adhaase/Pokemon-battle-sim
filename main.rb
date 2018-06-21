# main.rb

require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

# main

pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
charmander = Pokemon.new("Charmander", "Fire", 32, 51)
squirtle = Pokemon.new("Squirtle", "Water", 56, 22)

pikachu.pokemon_info
bulbasaur.pokemon_info
charmander.pokemon_info
squirtle.pokemon_info