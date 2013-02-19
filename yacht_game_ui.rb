require '../lib/yacht_game.rb'
require '../lib/player.rb'
require '../lib/turn.rb'
require '../lib/die.rb'

puts "Welcome to the Yacht Game!"
players = [Player.new("Player 1"), Player.new("Player 2")]
game = Game.new(players)
die = Die.new(6)

