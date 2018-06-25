# pokemon_battle.rb
# conducts the battle simulation process

require_relative 'pokemon_character.rb'
require_relative 'player.rb'

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

	# Battle between two Pokemon, the first Pokemon whos health == 0 loses.
	def battle(pkmn1, pkmn2)

	end
end

