# item.rb
# includes Item definition and usage

# TODO - this will be implemented later. The initial battle process will take place without items.

class Item
	attr_accessor :name, :quantity

	def initialize(name, quantity)
		@name = name
		@quantity = quantity
	end

	def use_item
		# TODO
	end
end