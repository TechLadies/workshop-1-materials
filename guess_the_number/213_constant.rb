#
# Up until now we allowed players to pick numbers from 0 to 100. What if we want
# to change it? We have to do it in 2 places: when picking a secret number and
# when informing player about what's the maximum number she can choose.
#
# To remove that duplication, we will use constants. Constants are, just like
# variables, references to some certain value. The difference is that constants
# should not be changed. Once we create them, their value should remain the
# same.
#
# Constants names consist of capital letters, underscore ("_") character and
# numbers.
#
# To make use of a constant in our program, we simply create a constant inside
# of a Game class and then replace the occurences of number 100 with this
# constant.
#

class Game
  MAXIMUM_NUMBER = 200

  def initialize
    @secret = rand(MAXIMUM_NUMBER+1)
    @number_of_tries = 0
  end

  def ask_for_number
    puts "Pick number between 0 and #{MAXIMUM_NUMBER}:"
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
