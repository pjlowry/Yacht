require '../lib/yacht_game.rb'
require '../lib/player.rb'

player1 = Player.new('player1')
player2 = Player.new('player2')
players = [player1, player2]
our_game = Game.new(players)

puts "#{player1.add_points(10)} should equal 10."
puts "#{player2.add_points(100)} should equal 100."
puts "#{player1.score} should equal 10."
puts "#{player2.score} should equal 100."

puts "#{our_game.who_wins.name} should equal player2."
puts "#{our_game.game_over?}"