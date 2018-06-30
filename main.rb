# main.rb
# stdout.sync = true is required, otherwise MINGW seems to wait for input. The default Windows terminal seems to be fine. TODO: look into this
$stdout.sync = true # set STDOUT to flush to the terminal after every write, rather than buffering it.

require_relative 'initialize_simulation.rb'
require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

# main()
header
trainer_name = trainer_greeting # trainer_greeting returns a string, the Player's name

# print usable Pokemon - void function that prints out the contents of the Pokemon_collection
print_usable_pokemon

# have the player choose their party of 6 pokemon and print their party
trainer = trainer_party_selection(trainer_name) # returns the Player object, called trainer. Use this to access Player member variables

puts ".......................................\n\n"







# TESTING - move this to a dedicated test file

puts ".......................................\n\n"

puts "#{trainer.party[3].name}" # this will print the name of the Pokemon at index 3


battle = PkmnBattle.new
# battle.health_point_recalculation(pikachu, bulbasaur)

#battle.pkmn_battle(pikachu, squirtle)




# name, type, health_points, attack_power (Pokemon order definition)