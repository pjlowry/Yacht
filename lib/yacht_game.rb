require '../lib/player.rb'

class Game
  attr_reader :players
  def initialize(players)
  	@players = players
  end

  def game_over?
  	if @players.turn == 13
  		true
  	else
  		false
  	end
  end


  def who_wins
    @players.max_by {|player| player.score}
  end
end

#@player1 = Player.new('player1')
#@player2 = Player.new('player2')