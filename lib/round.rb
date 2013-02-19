require '../lib/yacht_game.rb'
require '../lib/player.rb'
require '../lib/turn.rb'
require '../lib/die.rb'

class Round

	def initialize(game)
		@game = game
	end


		Turn.new(Player)

		
		players.each do |player|
		turn = Turn.new(player)
		@game.raise_round_count