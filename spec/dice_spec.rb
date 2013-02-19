require '../lib/dice.rb'

five_dice = Dice.new(5, 6)
puts "#{five_dice.throw(5)} should be five random numbers between 1 and 6."