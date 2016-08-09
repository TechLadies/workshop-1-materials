#
# In this version we add a new nice way to print the game's last results.
# First, we create a new function called "print_history" where we will print the
# results in a better format.
# To make this work, we need to make our "history" variable shared (by adding
# "@" in front of it). The reason is that otherwise it will not be visible
# inside of the function (because it was created outside!)
#
# Inside this function we use a new, very important, yet difficult feature. It
# is called "iteration" and we run it by calling "@history.each do |player,
# score|.
#
# What this feature does is that it will go through all the records in our hash,
# and will pass its key and value (under the names "player" and "score") to the
# piece of code inside it. We end the iteration with "end" keyword.
#
# Once again, this feature is difficult to understand, so don't worry if you
# have troubles with it. Remember that it applies to collections: arrays and
# hashes. Whenever we want to perform some operation on each element of the
# collection, we iterate over it with "each" function.
#
# The "print_history" function adds also 2 more texts that are printed, together
# with some weird-looking characters "\n". These 2 characters together mean that
# we simply want to go to another line of text (it will not print letter "n"!)
#

class Game
  attr_reader :number_of_tries, :player_name

  def initialize(maximum_number=10)
    @maximum_number = maximum_number
    @secret = rand(@maximum_number+1)
    @number_of_tries = 0
    @previous_tries = []
    @player_name = ask_for_name
  end

  def ask_for_name
    puts "What is your name"
    return gets.chomp
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

@history = {}

def print_history
  puts "\n\nGAME LEADERS\n\n"
  @history.each do |player, score|
    puts "#{player} won in #{score} tries"
  end
  puts "\n\nEND\n\n"
end

loop do
  puts "What do you want to do"
  puts "1 - play easy"
  puts "2 - play medium"
  puts "3 - play difficult"
  puts "0 - exit"

  choice = gets.to_i

  if choice == 1
    game = Game.new
    game.run
    @history[game.player_name] = game.number_of_tries
    print_history
  elsif choice == 2
    Game.new(200).run
  elsif choice == 3
    Game.new(300).run
  elsif choice == 0
    break
  end
end
