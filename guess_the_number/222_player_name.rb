#
# The next feature we want to add to our game is to remember the last score for
# each player. To do that, we first need to ask player for her name. This
# requires a few changes:
# - first we need to add a function called "ask_for_name" that will print the
# question and later return whatever name player writes
# - second, we need to assign that value (the name) to some shared variable
# - lastly we can print the name pf the player when she wins the game.
#

class Game
  def initialize(maximum_number=100)
    @maximum_number = maximum_number
    @secret = rand(@maximum_number+1)
    @number_of_tries = 0
    @previous_tries = []
    @player_name = ask_for_name
  end

  def ask_for_name
    puts "What is your name"
    return gets
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
        puts "#{@player_name}, your number was right!"
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
