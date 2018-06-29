# menu.rb
# Includes: menu titles and basic UI

require_relative 'player.rb'
require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'
require_relative 'pokemon_collection.rb'

def header
	print "------------------------------------------------\n"
	print "|               Pokemon Battle!                 |\n"
	print "|                                               |\n"
	print "|                by Alex Haase                  |\n"
	print "------------------------------------------------\n"
end


def trainer_greeting(player)
	print "Greetings trainer! I'm the Pokemon Professor around these parts. Before we get started with the battling, could you tell me your name? "
	trainer_name = gets.chomp # use .chomp to remove the newline character added by gets
	print "It's nice to meet you #{trainer_name}!"
end

def print_usable_pokemon
	puts "There's lots of Pokemon here to choose from, pick six of your favorites!"
	col = PokemonCollection.new
	all_pkmn = col.pokemon_collection
	col.print_pkmn_collection(all_pkmn)
	
end

def trainer_party_selection # returns the array of 6 Pokemon the trainer has chosen
end