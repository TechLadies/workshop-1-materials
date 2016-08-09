#
# As you've noticed in the previous program, after player's name is printed,
# there's always a line break after that. This is because the "enter" button
# creates a new line (and confirms the name when you input it). This is quite
# confusing, I realize that. Think of it as "enter" doing 2 things - it both
# sends signal to computer to process the input, but also goes to the next line,
# and the next line character is taken as part of the name.
#
# We quickly solve this problem by calling "chomp" method on the name. This will
# simply remove that new line character and the program will print the player's
# name correctly now.
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
  when 1 then Game.new.run
  when 2 then Game.new(200).run
  when 3 then Game.new(300).run
  else break
  end
end

