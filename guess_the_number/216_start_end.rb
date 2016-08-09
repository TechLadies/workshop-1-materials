#
# The previous version of the game runs infinitely - never ends until
# user stops the game by pressing CTRL+C.
# This update changes it - before every game we print the menu for the user and
# ask her if she wants to play or exit the game.
# We use techniques we've already learned:
# - we use "gets" function to get the input from player and then we convert that
# input to a number
# - we use "if" to differentiate program's behaviour depending on user's choice
# - we use "break" word to get out of the loop and finish program if user
# presses 0
#

class Game
  MAXIMUM_NUMBER = 100

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

loop do
  puts "What do you want to do"
  puts "1 - play"
  puts "0 - exit"

  choice = gets.to_i

  if choice == 1
    Game.new.run
  elsif choice == 0
    break
  end
end
