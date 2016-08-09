#
# Our next feature will be to add different difficulty levels to our game.
# The more difficult the leve, the bigger maximum allowed number is.
#
# In order to change the maximum number, we cannot use the constant anymore
# (remember, constant cannot change). We will change it to a variable instead.
# 
# First, we add a parameter called "maximum_number" to our "initialize"
# function. Then we assign a shared variable "@maximum_number", and then replace
# all occurences of the constant with shared variable.
#
# In the end, when we create new game, we need to provide it the maximum number
# as a parameter. We start with number 100.
#

class Game
  def initialize(maximum_number)
    @maximum_number = maximum_number
    @secret = rand(@maximum_number+1)
    @number_of_tries = 0
    @previous_tries = []
  end

  def run
    def ask_for_number
      puts "Pick number between 0 and #{@maximum_number}:"
      return gets.to_i
    end

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
  puts "1 - play"
  puts "0 - exit"

  choice = gets.to_i

  if choice == 1
    Game.new(100).run
  elsif choice == 0
    break
  end
end
