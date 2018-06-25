# main.rb

require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

# main

# name, type, health_points, attack_power
pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
charmander = Pokemon.new("Charmander", "Fire", 32, 51)
squirtle = Pokemon.new("Squirtle", "Water", 56, 22)

battle = PkmnBattle.new
# battle.health_point_recalculation(pikachu, bulbasaur)

battle.pkmn_battle(pikachu, squirtle)