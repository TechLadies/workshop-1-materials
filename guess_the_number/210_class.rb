#
# Until now, the game was played only once. To play it again, user needs to
# run the program again. We want to change it, so that user can play as many
# time as she wants without restarting the program. The first step we do is to
# create a new class that will represent a game.
#
# This class has one function, called "run". What we basically do is to move all
# the code we've written so far to that function, and after finishing a class,
# we create a new game and then we run it.
#
# Please notice difference between game and Game - the first one is a name of
# a variable (starts with small letter), the other one is a name of a class
# (starts with capital letter). So game variable is an instance of Game class.
#
# When we create a variable of a Game type, we can later call a function on this
# variable. Game class has just one function that runs the game.
#
# During workshop the last 2 lines were kept as one instead: Game.new.run - both
# versions are correct, I decided to change it here to make it more clear
#

class Game
  def run
    secret = rand(101)
    number_of_tries = 0

    def ask_for_number
      puts "Pick number between 0 and 100:"
      return gets.to_i
    end

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
