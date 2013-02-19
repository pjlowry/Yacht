require '../lib/player.rb'
require '../lib/turn.rb'
require '../lib/die.rb'

player1 = Player.new("player1")
turn = Turn.new(player1)
our_die = Die.new(6)
our_roll = [our_die.throw, our_die.throw, our_die.throw, our_die.throw, our_die.throw].sort

puts "#{player1.turn_count} should equal 0."
puts "#{player1.score} should equal 0."
puts "#{player1.add_points(50)} should equal 50."
puts "#{player1.score} should equal 50."
puts "#{player1.raise_turn_count(1)} should equal 1."
puts "#{player1.turn_count} should equal 1."
puts "#{our_roll}."
puts "#{turn.points(our_roll)} should equal some points."
puts "#{player1.add_points("#{turn.points(our_roll)}")} should equal or exceed 50."