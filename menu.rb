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


def trainer_greeting
	print "Greetings trainer! I'm the Pokemon Professor around these parts. Before we get started with the battling, could you tell me your name? "
	trainer_name = gets.chomp # use .chomp to remove the newline character added by gets
	print "It's nice to meet you #{trainer_name}! "
	return trainer_name
end

def print_usable_pokemon
	puts "There's lots of Pokemon here to choose from, pick six of your favorites!\n\n"
	pkmn_col = PokemonCollection.new
	all_pkmn = pkmn_col.pokemon_collection
	pkmn_col.print_pkmn_collection(all_pkmn)
	puts "\n"
end

def trainer_party_selection(name) # returns the array of 6 Pokemon the trainer has chosen
	pkmn_col = PokemonCollection.new
	all_pkmn = pkmn_col.pokemon_collection # the array of all of the available Pokemon

	trainer_party = []
	trainer = Player.new(name, trainer_party)
	for x in 0..5 # there are 6 Pokemon in a Party
		print "Please select a Pokemon from the above list: "
		pokemon_num = gets
		# add that selected Pokemon to the Player party array
		# from the trainer object, access the party member variable, and push the index of the pokemon_collection array into the new party array
		trainer.party.push(all_pkmn[pokemon_num.to_i])
	end

	puts "\n"
	puts "That team is looking solid! Here are the Pokemon you chose!"
	trainer.print_party
end