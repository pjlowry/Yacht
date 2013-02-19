class Die
	def initialize(number_of_sides)
		@number_of_sides = number_of_sides
	end

	def throw
		rand(1..@number_of_sides)
	end
end