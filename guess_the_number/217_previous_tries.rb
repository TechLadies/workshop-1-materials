#
# This update adds another feature to our program - we now remember all user's
# guesses and print them when user wins the game.
# To store them we use  a new data type that we haven't learned before. It is
# called an array an you can thing of it as a list.
# We crate an empty array by assigning [] value to a variable. Please notice
# that these are to separate characters: [ and ] (depending on your font it
# might look like it's just a square)
#
# Whenever user picks a number, we add this number to a list of previous tries.
# We use the "<<" function. It means that we are adding an element to the array.
#
# Later, when user wins the game, we show both number of tries and the list of
# all tries.
#

class Game
  MAXIMUM_NUMBER = 100

  def initialize
    @secret = rand(MAXIMUM_NUMBER+1)
    @number_of_tries = 0
    @previous_tries = []
  end

  def ask_for_number
    puts "Pick number between 0 and #{MAXIMUM_NUMBER}:"
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
        puts "Your tries were: #{@previous_tries}"
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
