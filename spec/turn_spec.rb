require '../lib/turn.rb'
require '../lib/die.rb'
require '../lib/player.rb'

player1 = Player.new('player1')
turn = Turn.new(player1)
our_die = Die.new(6)
our_roll = [our_die.throw, our_die.throw, our_die.throw, our_die.throw, our_die.throw].sort
yacht_roll = [2, 2, 2, 2, 2]
full_house_roll = [2, 2, 5, 5, 5]
straight_roll = [1, 2, 3, 4, 5]
four_roll = [2, 2, 2, 2, 1]

puts "#{player1.score} should equal 0"
puts "#{turn.raise_score} should equal "
puts "#{player1.score} should equal 11"
puts "#{our_roll}"
puts "#{turn.points(our_roll)} should equal 25"
puts "#{turn.points(yacht_roll)} should equal 50"
puts "#{turn.points(straight_roll)} should equal 40"
puts "#{turn.points(full_house_roll)} should equal 25"
puts "#{turn.points(four_roll)} should equal 8"
puts "#{turn.raise_score} should equal "

