#
# Because right now we have access to player's numbe and the number of tries, we
# can add a history feature. This feature will remember the last result for each
# player. Let's say there are 3 friends playing the game: Alice, Bob and
# Charlie. Program will remember a score each of them got.
#
# First thing we do is to create a "history" variable and assign to it a new
# type of data, called "hash" (it is often called "map" or "dictionary" as
# well). "hash" is kind of a list that stores 2 values for each element: a key
# and a value. The values may repeat for different keys, but each key can appear
# only once in a hash. For example, I want to keep a list of main languages used
# in different countries. I will keep it in hash like this:
# languages = {
#   "Germany" => "German",
#   "Thailand" => "Thai",
#   "Austria" => "German
# }
#
# You see? On the left we have names of countries and on the right we have names
# of languages. Each of the line is in "x => y" format, where x is the key, and
# y is the value.
#
# Later we can access our hash like this: "languages['Thailand']" to find out
# what is the main language in Thai.
#
# Back to our program. After we created the history hash, we need to fill it
# after every game. We do it in following line:
# "history[game.player_name] = game.number_of_tries"
# This looks complicated, but what it means is: for key represented by player's
# name in a history hash, we want to store the game's number of tries.
#
# So if my player name is Grzegorz and I won in 6 tries, the computer will see
# something like this:
# history["Grzegorz"] = 6
#
# Later we print the history to see what are the last results for each player.
#
# Play a bit with this program and different names to see how it works! (please
# note that right now it only works on the easy level!)
#


class Game
  attr_reader :number_of_tries, :player_name

  def initialize(maximum_number=100)
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

history = {}

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
    history[game.player_name] = game.number_of_tries
    puts history
  elsif choice == 2
    Game.new(200).run
  elsif choice == 3
    Game.new(300).run
  elsif choice == 0
    break
  end
end
