#
# When we are presenting list of tries, it is displayed in [1, 2, 3] format.
# This does not look naturally, so we'll fix that.
# In order to change it we neet to convert our array to string (text) type.
# We do it by calling a function called "join" on our array. This function will
# connect together all elements with whatever we tell it to. In our case we want
# to connect the numbers with a comma and a space (", "). After that small
# change our list of numbers looks like this: 1, 2, 3, which is more natural.
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
        puts "Your tries were: #{@previous_tries.join(", ")}"
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
