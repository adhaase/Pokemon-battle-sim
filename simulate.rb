# simulate.rb
# runs the entire simulation

def initialize_rival
	
end


def simulate
	header
	trainer_name = trainer_greeting # trainer_greeting returns a string, the Player's name

	# print usable Pokemon - void function that prints out the contents of the Pokemon_collection
	print_usable_pokemon

	# have the player choose their party of 6 pokemon and print their party
	trainer = trainer_party_selection(trainer_name) # returns the Player object, called trainer. Use this to access Player member variables

	# initialize rival
	# initialize Rival player and Rival's Pokemon
	# name, type, health_points, attack_power (Pokemon order definition)
	torchic = Pokemon.new("Torchic", "Fire", 26, 31)
	mudkip = Pokemon.new("Mudkip", "Water", 56, 15)
	eevee = Pokemon.new("Eevee", "Normal", 31, 29)
	sandshrew = Pokemon.new("Sandshrew", "Ground", 44, 21)
	geodude = Pokemon.new("Geodude", "Rock", 25, 66)
	elekid = Pokemon.new("Elekid", "Electric", 55, 24)
	rival_party = [torchic, mudkip, eevee, sandshrew, geodude, elekid]
	rival = Player.new("Rival", rival_party)

	# conduct the battle between the trainer (you!) and your Rival
	battle = PkmnBattle.new
	battle.pkmn_battle(trainer.party[2], rival.party[4])

	puts ".......................................\n\n"



	# TESTING - move this to a dedicated test file

	puts ".......................................\n\n"

	#puts "#{trainer.party[3].name}" # this will print the name of the Pokemon at index 3


	# battle.health_point_recalculation(pikachu, bulbasaur)

	#battle.pkmn_battle(pikachu, squirtle)
end