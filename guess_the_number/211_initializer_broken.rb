#
# In order to make our class more readable, we split the "run" function into
# a few. Firstly, we take out the "ask_for_number" function out of the body of
# "run" function (we just move it outside). This is a bit different than at the
# workshop where I kept it there. During workshop I didn't add this change,
# because I didn't want to complicate it more. I do it here, because it is
# considered a bad practice to have a function defined inside another function.
# 
# The 2nd move is to create an "initialize" function. This function is
# automatically called whenever we create a new instance of a class (so when
# I call "Game.new" this function is called automatically).
#
# We move 2 things to initializer: picking a secret number and creating an
# "number_of_tries" variable.
#
# This program will not run correctly. It should show an error, and in the next
# step I'll explain what was the problem and how to fix it.
#

class Game
  def initialize
    secret = rand(101)
    number_of_tries = 0
  end

  def ask_for_number
    puts "Pick number between 0 and 100:"
    return gets.to_i
  end

  def run
    loop do
      number_of_tries += 1
      guess = ask_for_number
      if secret > guess
        puts "Your number was too small"
      elsif secret < guess
        puts "Your number was too big"
      else
        puts "Your number was right!"
        puts "You tried #{number_of_tries} times"
        break
      end
    end
  end
end

game = Game.new
game.run
