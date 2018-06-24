# pokemon_battle.rb
# conducts the battle simulation process

require_relative 'pokemon_character.rb'
require_relative 'player.rb'

<<<<<<< HEAD
# A Pokemon battle is a 2-player event, where each player is allowed six (6) Pokemon.
# The battle concludes when all of one players Pokemon are unable to battle
# - unable to battle = all Pokemon HP == 0.

class PkmnBattle
	# health_point_recalculation takes place every time a Pokemon is attacked,
	# subtracting the 
	def health_point_recalculation(pkmn1, pkmn2)
		pkmn1_HP = pkmn1.health_points - pkmn2.attack_power
		puts pkmn1_HP
		return pkmn1_HP
	end

	def battle(pkmn1, pkmn2)

	end
end
=======
>>>>>>> 111107bcf389a35116b86bc551c7eac4ef10e6e5

