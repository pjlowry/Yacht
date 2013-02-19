class Dice
	
	def initialize(number_of_dice, number_of_sides)
		@number_of_sides = number_of_sides
		@number_of_dice = number_of_dice
	end

	def throw(number_of_dice)
		(1..number_of_dice).to_a.map { |i| rand(1..@number_of_sides) }.sort
	end


end