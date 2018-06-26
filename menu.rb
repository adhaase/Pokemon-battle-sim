# menu.rb
# Includes: menu titles and basic UI

require_relative 'player.rb'
require_relative 'pokemon_character.rb'
require_relative 'pokemon_battle.rb'

def header
	print "------------------------------------------------\n"
	print "|               Pokemon Battle!                 |\n"
	print "|                                               |\n"
	print "|                by Alex Haase                  |\n"
	print "------------------------------------------------\n"
end


def trainer_greeting(player)
	print "Greetings trainer! I'm the Pokemon Professor around these parts. Before we get started with the battling, could you tell me your name? "
	trainer_name = gets
	puts "It's nice to meet you #{trainer_name}!"
	player.name = trainer_name
end

def print_usable_pokemon
	puts "There's lots of Pokemon here to choose from, pick your favorite!"

	pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
	bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
	charmander = Pokemon.new("Charmander", "Fire", 32, 51)
	squirtle = Pokemon.new("Squirtle", "Water", 56, 22)
end

def trainer_party_selection # returns the array of 6 Pokemon the trainer has chosen
end