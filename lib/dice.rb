require '../lib/die.rb'

class Dice
	attr_reader :number_of_dice

	def initialize(number_of_dice)
		@number_of_dice = number_of_dice
	end

	def roll!
		our_die = Die.new(6)
		dice_roll = [0..@number_of_dice]
		each do |counter|
			our_die.throw
		end
	end
end
