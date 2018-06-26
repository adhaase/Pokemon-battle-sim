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
		#puts pkmn1_HP
		return pkmn1_HP
	end

	def validate_pkmn_health(pkmn)
		if pkmn.health_points > 0
			return true
		else
			return false
		end
	end

	# Battle between two Pokemon, the first Pokemon whos health_points <= 0 loses.
	def pkmn_battle(pkmn1, pkmn2)
		puts "#{pkmn1.name} vs. #{pkmn2.name}!"
		puts "---------------------"

		while pkmn1.health_points > 0 || pkmn2.health_points > 0
			# pkmn 1 attacks first
			# pkmn 2's HP must be recalculated
			puts "#{pkmn1.name} attacks #{pkmn2.name} for #{pkmn1.attack_power} damage!"
			pkmn2.health_points = health_point_recalculation(pkmn2, pkmn1)
			if pkmn2.health_points <= 0
				return puts "#{pkmn2.name} has fainted! #{pkmn1.name} wins!"
			end
			puts "#{pkmn2.name}'s HP has been reduced to #{pkmn2.health_points}"

			# -----------------------------------------------------------------
			# pkmn 2 attacks second
			# pkmn 1's HP must be recalculated
			puts "#{pkmn2.name} attacks #{pkmn1.name} for #{pkmn2.attack_power} damage!"
			pkmn1.health_points = health_point_recalculation(pkmn1, pkmn2)
			if pkmn1.health_points <= 0
				return puts "#{pkmn1.name} has fainted! #{pkmn2.name} wins!"
			end
			puts "#{pkmn1.name}'s HP has been reduced to #{pkmn1.health_points}"
		end
	end
end



# TEST

#pikachu = Pokemon.new("Pikachu", "Electric", 24, 31)
#bulbasaur = Pokemon.new("Bulbasaur", "Grass", 43, 19)

#battle = PkmnBattle.new
#pikachu_health_bool = battle.validate_pkmn_health(pikachu)
#puts pikachu_health_bool
#pikachu.health_points = -1
#pikachu_health_bool = battle.validate_pkmn_health(pikachu)
#puts pikachu_health_bool

#battle.pkmn_battle(pikachu, bulbasaur)