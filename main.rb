# main.rb

require_relative 'menu.rb'
require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

# main
header

player = ""

trainer_greeting(player)

# name, type, health_points, attack_power


battle = PkmnBattle.new
# battle.health_point_recalculation(pikachu, bulbasaur)

#battle.pkmn_battle(pikachu, squirtle)