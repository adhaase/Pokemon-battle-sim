# player.rb
# contains information about the Player class
# a Player can hold 6 Pokemon in their party. 

require_relative 'pokemon_character.rb'

class Player
	def initialize(name, party) # ctor
		# instance variables 
		@name = name
		@party = Array.new(6) # max of 6 Pokemon can be in one party
	end

	def print_party(party)
		party.each {|x| puts x}
	end

	def player_info # prints player name and party
	end
end


Alex = Player.new 
Alex.party