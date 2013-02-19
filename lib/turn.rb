require '../lib/player.rb'

class Turn
	attr_reader :over, :points
	
	def initialize(player)
		@over = false
		@points = 0
		@player = player
	end


	def points(roll)
		if yacht(roll)
			50
	  elsif straight(roll)
	  	40
	  elsif full_house(roll)
	  	25
	  elsif first_four_of_a_kind(roll)
	  	roll[0] + roll[1] + roll[2] + roll[3]
	  elsif second_four_of_a_kind(roll)
	  	roll[1] + roll[2] + roll[3] + roll[4]
	  else
	  	0
  	end
	end

	def raise_score
		@player.score += Turn.points(roll)
	end

	def raise_turn_count
		@player.turn_count += 1
	end


	private

	def yacht(roll)
		roll[0] == roll[1] && roll[0] == roll[2] && roll[0] == roll[3] && roll[0] == roll[4]
	end

	def straight(roll)
		roll[0..4] == (1..5).to_a || roll[0..4] == (2..6).to_a
	end

	def full_house(roll)
		roll[0] == roll[1] && roll[3] == roll[4] && ( roll[2] == roll[1] || roll[2] == roll[4] )
	end

	def first_four_of_a_kind(roll)
		roll[0] == roll[1] && roll[1] == roll[2] && roll[2] == roll[3] && roll[3] != roll[4]
	end

	def second_four_of_a_kind(roll)
		roll[0] != roll[1] && roll[1] == roll[2] && roll[2] == roll[3] && roll[3] == roll[4]
	end
end
