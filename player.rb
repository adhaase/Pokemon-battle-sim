# player.rb
# contains information about the Player class
# a Player can hold 6 Pokemon in their party. 

require_relative 'pokemon_character.rb'

class Player
	def initialize(name, party) # ctor
		# instance variables 
		@name = name # string
		# party is an array of Pokemon objects (TODO - but I don't define the party below as an array []?)
		@party = party # max of 6 Pokemon can be in one party (contains Pokemon objects)
	end

	def print_party # a player knows the Pokemon party, no need to pass argument
		@party.each do |pkmn|
			puts "Name: #{pkmn.name} | Type: #{pkmn.type} | HP: #{pkmn.health_points} | ATK: #{pkmn.attack_power}"
		end
	end

	def player_info # prints player name and party
		puts "Player name: #{@name}"
		#print "Party size: "
		#puts @party.length
		print_party
	end
end



<<<<<<< HEAD
# TEST - TODO: move this to a dedicated unit test file

#pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
#bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
#charmander = Pokemon.new("Charmander", "Fire", 32, 51)
#squirtle = Pokemon.new("Squirtle", "Water", 56, 22)

#alex_party = [pikachu, squirtle, charmander, bulbasaur]
#alex = Player.new("Alex", alex_party)

#alex.player_info
=======
# TEST

pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
charmander = Pokemon.new("Charmander", "Fire", 32, 51)
squirtle = Pokemon.new("Squirtle", "Water", 56, 22)

alex_party = [pikachu, squirtle, charmander, bulbasaur]
alex = Player.new("Alex", alex_party)

alex.player_info
>>>>>>> 111107bcf389a35116b86bc551c7eac4ef10e6e5
