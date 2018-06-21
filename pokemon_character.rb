# pokemon_character.rb
# includes definition of a Pokemon (required typing, attack_power, health_points, etc.)

class Pokemon
	def initialize(name, type, health_points, attack_power)
		# use these parameters to create 'instance' variables
		# there will be multiple Pokemon, so each individual instance of a Pokemon is separate
		@name = name # '@name' is equal to the parameter 'name'
		@type = type
		@health_points = health_points
		@attack_power = attack_power
	end

	def pokemon_info
		# use the instance variables ~ @
		puts "#{@name} is a #{@type} type Pokemon with #{@health_points} HP and #{@attack_power} attack power."
	end
end