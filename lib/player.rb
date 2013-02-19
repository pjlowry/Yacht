class Player
	attr_reader :name, :score, :turn_count

	def initialize(name)
		@name = name
		@score = 0
		@turn_count = 0
	end

	def add_points(new_points)
		@score += new_points.to_i
	end
end

	# def raise_turn_count(number_of_turns)
	# 	@turn_count += number_of_turns
	# end