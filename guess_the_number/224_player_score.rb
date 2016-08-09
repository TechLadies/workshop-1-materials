#
# This program will allow us to access the player's name and the number of tries
# from outside of the class scope.
# Remember, when we talked about scope of variables? If we call variable without
# "@" character, it is available only within its block (e.g. a function body).
# If we add "@" it is available in the broader scope (in our case it is
# available in the whole class). Finally, if we want to make it available
# outside of class, we use a function called "attr_reader".
#
# What we do here is basically saying "I want these variables to be available
# outside of the class". After "attr_reader" we provide a list of variables we
# want to share.
#
# Later we can try if it works by accessing them when user wins the game (check
# line number 71!)
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

loop do
  puts "What do you want to do"
  puts "1 - play easy"
  puts "2 - play medium"
  puts "3 - play difficult"
  puts "0 - exit"

  choice = gets.to_i

  case choice
  when 1
    game = Game.new
    game.run
    puts "player #{game.player_name} won in #{game.number_of_tries} tries"
  when 2 then Game.new(200).run
  when 3 then Game.new(300).run
  else break
  end
end
