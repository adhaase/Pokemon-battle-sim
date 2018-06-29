# pokemon_party.rb
# Includes: declaration of the available Pokemon and the Player's specific party

require_relative 'pokemon_character.rb'

class PokemonCollection
	#attr_accessor :pkmn_collection # array of Pokemon objects (of available Pokemon for the trainer to choose from)

	#def initialize(pkmn_collection) # ctor
	#	@pkmn_collection = pkmn_collection # array of Pokemon objects
	#end

	def pokemon_collection # return an array of Pokemon objects of all available Pokemon in the game
		pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
		bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)
		charmander = Pokemon.new("Charmander", "Fire", 32, 51)
		squirtle = Pokemon.new("Squirtle", "Water", 56, 22)
		pidgey = Pokemon.new("Pidgey", "Normal", 11, 21)
		caterpie = Pokemon.new("Caterpie", "Bug", 14, 8)
		mankey = Pokemon.new("Mankey", "Fighting", 32, 61)
		ghastly = Pokemon.new("Ghastly", "Ghost", 32, 36)

		collection = [pikachu, bulbasaur, charmander, squirtle, pidgey, caterpie, mankey, ghastly]
		return collection
	end

	def print_pkmn_collection(collection)
		poke_num = 0 # TODO: check if there's a way to print out the index based on the below loop, rather than allocating another variable to do so
		collection.each do |pkmn|
			puts "#{poke_num}. #{pkmn.name} | Type: #{pkmn.type} | HP: #{pkmn.health_points} | ATK: #{pkmn.attack_power}"
			poke_num += 1
		end
	end
end


#col = PokemonCollection.new
#all_pkmn = col.pokemon_collection

#col.print_pkmn_collection(all_pkmn)