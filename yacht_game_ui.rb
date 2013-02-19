require './lib/yacht_game.rb'
require './lib/player.rb'
require './lib/turn.rb'
require './lib/dice.rb'

puts "Welcome to the Yacht Game!"
puts "To exit: press escape then enter."
puts "This game is meant for 2 to 8 players. How many players are there?"
player_count = gets.chomp


game = Game.new(players)
if game.limit_check?(player_count) == false
	"Invalid entry. Please enter an integer between 2 and 8."
else
	map_players(player_count)
end

puts "Ok, this is a #{player_count}-game. Get ready to roll!"
players = Player.new(['Player 1', 'Player 2'])
dice = Dice.new(5, 6)


puts "Roll the dice! Press 'r'"
roll_the_dice = gets.chomp
if roll_the_dice == 'r'
	dice_roll = dice.throw(5)
else
	"Press 'r' to roll"
end

turn1a = Turn.new(Player 1)

puts "Your roll was #{dice.throw(5)}"
puts "Your score is now #{turn1a.points(dice_roll)}"
Turn.new(Player 2)

puts "Roll the dice!"
  dice_roll = dice.throw(5)

puts "Your roll was #{dice.throw(5)}"




until game.round_count == 13
	players.each do |player|
		puts "#{player.name}, your turn. Press \n\n"

		turn = Turn.new(player)
	end 

end