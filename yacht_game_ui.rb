require '../lib/yacht_game.rb'
require '../lib/player.rb'
require '../lib/turn.rb'
require '../lib/die.rb'

puts "Welcome to the Yacht Game!"
puts "To exit: press escape then enter."
puts "This game is meant for 2 to 8 players. How many players are there?"
player_count = gets.chomp

if limit_check?(player_count) == false
	"Invalid entry. Please enter an integer between 2 and 8."
else
	map_players(player_count)
end

puts "Ok, this is a #{player_count}-game. Get ready to roll!"

players = [Player.new("Player 1"), Player.new("Player 2")]
game = Game.new(players)
die = Die.new(6)

until game.round_count == 13
	players.each do |player|
		puts "#{player.name}, your turn.\n\n"
		turn = Turn.new(player)
	end 
end