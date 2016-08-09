#
# This version is just a shorter program from last step. Instead of having
# 3 separate "if" blocks, we connect it into one.
# We use a new keyword "elsif" that is a Ruby version of saying "else if".
# Therefore we have 3 different conditions, and they are exclusive (if secret number is
# greater than guessed number, it cannot be smaller or equal), so we can connect
# them into one block.
#

secret = rand(101)

puts "Pick number between 0 and 100:"
guess = gets.to_i
puts "You picked number #{guess}, and secret number was #{secret}"

if secret > guess
  puts "Your number was too small"
elsif secret < guess
  puts "Your number was too big"
else
  puts "Your number was right!"
end
