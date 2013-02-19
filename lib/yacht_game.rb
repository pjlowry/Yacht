require '../lib/player.rb'

class Game
  attr_reader :players, :round_count
  def initialize(players)
  	@players = players
  	@round_count = 0
  end
  
  def limit_check?(player_count)
    if player_count.class != Fixnum
    	false
    elsif player_count < 2 || player_count > 8
    	false
    else
    	true
    end
	end

	def map_players(player_count)
		(1..player_count).to_a.map { |i| Player.new("Player #{i}")}
	end
  
  def raise_round_count
  	@round_count += 1
  end

  def game_over?
  	if @players.turn_count == 13
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