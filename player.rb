# player.rb
# contains information about the Player class
# a Player can hold 6 Pokemon in their party. 

require_relative 'pokemon_character.rb'

class Player
	def initialize(name, party) # ctor
		# instance variables 
		@name = name
		@party = Array.new(6) # max of 6 Pokemon can be in one party (contains Pokemon objects)
	end

	def print_party(party)
		party.each do |pkmn|
			puts pkmn
		end
	end

	def player_info # prints player name and party
		puts "Player name: #{@name}"
		print_party(@party)
	end
end

pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
charmander = Pokemon.new("Charmander", "Fire", 32, 51)
squirtle = Pokemon.new("Squirtle", "Water", 56, 22)

def print_array(array)
	puts "Print array function"
	array.each do |i|
		puts i
	end
end

alex_party = [pikachu, bulbasaur]
print_array(alex_party)


Alex = Player.new("Alex", alex_party)
#Alex.player_info
#Alex.print_party(alex_party)