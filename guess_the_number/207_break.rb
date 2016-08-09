#
# This version of the program adds only one small change: the new word "break".
# We add it when user guesses number correctly. The word "break" will finish the
# loop and go out of this block. What we achieve thanks to that is that the
# program will run only as long as user tries wrong number. When she guesses the
# correct number, the program will end.
#

secret = rand(101)

loop do

  puts "Pick number between 0 and 100:"
  guess = gets.to_i

  if secret > guess
    puts "Your number was too small"
  elsif secret < guess
    puts "Your number was too big"
  else
    puts "Your number was right!"
    break
  end

end
