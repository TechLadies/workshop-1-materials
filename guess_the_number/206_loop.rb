#
# The previous versions of the game did not allow player to take another try
# when her number was wrong. This version add a "loop" block that infinitely
# repets whatever we add there.
# The code that appears between "loop do" and the last "end" line will be
# repeated over and over, unless user quits the program (by pressing CTRL+C on
# the keyboard).
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
  end

end
