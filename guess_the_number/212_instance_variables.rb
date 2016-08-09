#
# Let's explain the problem that appeared in the last program:
# variables we create have a certain scope they exist in. If a variable is
# created inside a function, it is available only in that function. To share
# variables across functions we need to either pass them around as parameters or
# we need to create so called "instance variables". Their names start with "@"
# character. These variables are shared inside a broader scope - in our case, it
# will be within a scope of the whole class.
#
# To fix the problem, we need to make "secret" and "number_of_tries" variables
# shared. We simply add "@" character in front of them and do it in every place
# those variables were used. After this change, the program should work fine.
#

class Game
  def initialize
    @secret = rand(101)
    @number_of_tries = 0
  end

  def ask_for_number
    puts "Pick number between 0 and 100:"
    return gets.to_i
  end

  def run
    loop do
      @number_of_tries += 1
      guess = ask_for_number
      if @secret > guess
        puts "Your number was too small"
      elsif @secret < guess
        puts "Your number was too big"
      else
        puts "Your number was right!"
        puts "You tried #{@number_of_tries} times"
        break
      end
    end
  end
end

game = Game.new
game.run
