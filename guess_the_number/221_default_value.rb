#
# This and following programs were not covered at the workshop, so it is not
# expected that you will understand it. However, you may have a look and try to
# understand it, it will certainly be useful later!
# 
# In this program we add a default value of a parameter. What it means is that
# if we call a function without providing the value, the program will use the
# default one. In our case this parameter will be a "maximum_number".
#
# To add a default value we only need to add it to function's definition. Check
# that the definition of "initialize" function now contains
# "maximum_number=100". It means that 100 is the default value of this
# parameter.
#
# To test if it really works we change the way we start the game on easy level.
# Before it was "Game.new(100).run", now we simply write "Game.new.run". The
# behaviour of our program should remain the same!
#

class Game
  def initialize(maximum_number=100)
    @maximum_number = maximum_number
    @secret = rand(@maximum_number+1)
    @number_of_tries = 0
    @previous_tries = []
  end

  def ask_for_number
    puts "Pick number between 0 and #{@maximum_number}:"
    return gets.to_i
  end

  def run
    loop do
      @number_of_tries += 1
      guess = ask_for_number
      @previous_tries << guess
      if @secret > guess
        puts "Your number was too small"
      elsif @secret < guess
        puts "Your number was too big"
      else
        puts "Your number was right!"
        puts "You tried #{@number_of_tries} times"
        puts "Your tries were: #{@previous_tries.join(', ')}"
        break
      end
    end
  end
end

loop do
  puts "What do you want to do"
  puts "1 - play easy"
  puts "2 - play medium"
  puts "3 - play difficult"
  puts "0 - exit"

  choice = gets.to_i

  if choice == 1
    Game.new.run
  elsif choice == 2
    Game.new(200).run
  elsif choice == 3
    Game.new(300).run
  elsif choice == 0
    break
  end
end
