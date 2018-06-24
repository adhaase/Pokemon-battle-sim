# main.rb

require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

# main

# name, type, health_points, attack_power
pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
charmander = Pokemon.new("Charmander", "Fire", 32, 51)
squirtle = Pokemon.new("Squirtle", "Water", 56, 22)

<<<<<<< HEAD
battle = PkmnBattle.new
battle.health_point_recalculation(pikachu, bulbasaur)
=======
pikachu.pokemon_info
bulbasaur.pokemon_info
charmander.pokemon_info
squirtle.pokemon_info
>>>>>>> 111107bcf389a35116b86bc551c7eac4ef10e6e5
