require './lib/player.rb'
require './lib/yacht_game.rb'
require './lib/die.rb'

class Turn
	attr_reader :over, :points
	
	def initialize(player)
		@over = false
		@points = 0
		@player = player
		@dice_roll = Array.new
	end

	def toss_dice
		@dice_roll << Dice.throw
	end


	def points(roll)
		if yacht(roll)
			@points += 50
	  elsif straight(roll)
	  	@points += 40
	  elsif full_house(roll)
	  	@points += 25
	  elsif first_four_of_a_kind(roll)
	  	@points += roll[0] + roll[1] + roll[2] + roll[3]
	  elsif second_four_of_a_kind(roll)
	  	@points += roll[1] + roll[2] + roll[3] + roll[4]
	  elsif three_of_a_kind(roll) == 1
	  	@points += roll[0] + roll[1] + roll[2]
	  elsif three_of_a_kind(roll) == 2
	  	@points += roll[1] + roll[2] + roll[3]
	  elsif three_of_a_kind(roll) == 3
	  	@points += roll[2] + roll[3] + roll[4]
	  elsif small_straight(roll) == true
	  	@points += 30
	  else
	  	@points += 0
  	end
	end


	def raise_score
		@player.add_points(@points)
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

	def three_of_a_kind(roll)
		if roll[0] == roll[1] && roll[1] == roll[2]
			1
		elsif roll[1] == roll[2] && roll[2] == roll[3]
			2
		elsif roll[2] == roll[3] && roll[3] == roll[4]
			3
		end
	end

	def small_straight(roll)
		if roll[0..3] == [1, 2, 3, 4] || roll[0..3] == [2, 3, 4, 5] || roll[0..3] == [3, 4, 5, 6] 
		true
		elsif roll[1..4] ==  [1, 2, 3, 4] || roll[1..4] == [2, 3, 4, 5] || roll[1..4] == [3, 4, 5, 6]
		true
		else
		false
		end
	end
end

