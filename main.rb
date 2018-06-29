# main.rb
# stdout.sync = true is required, otherwise MINGW seems to wait for input. The default Windows terminal seems to be fine. TODO: look into this
$stdout.sync = true # set STDOUT to flush to the terminal after every write, rather than buffering it.

require_relative 'menu.rb'
require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

# main()
header
trainer_name = trainer_greeting

# print usable Pokemon
print_usable_pokemon

# have the player choose their party of 6 pokemon
trainer_party_selection(trainer_name)

# print the entire trainer party



battle = PkmnBattle.new
# battle.health_point_recalculation(pikachu, bulbasaur)

#battle.pkmn_battle(pikachu, squirtle)




# name, type, health_points, attack_power (Pokemon order definition)