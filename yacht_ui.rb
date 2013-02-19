require './lib/Yacht.rb'

puts "Welcome to Yacht Dice!"
player1 = Player.new
player2 = Player.new

puts "To exit: press escape then enter."

input = gets.chomp

until input == "\e"

unless input == "\e"

player1.turn = 1
until game_over

puts "Player 1: press r to roll the dice.\n"
player1.turn_points = 0
score = 0
if  input == 'r'
	puts "Player 1's score = #{dice_roll.turn_points}."
	score += turn_points
	puts "Player 1, your total score is #{score}"
end


puts "Player 2: press r to roll the dice.\n"
player2.turn_points = 0
score = 0
if  input == 'r'
	puts "Player 2's score = #{dice_roll.turn_points}."
	score += turn_points
	puts "Player 2, your total score is #{score}"
end