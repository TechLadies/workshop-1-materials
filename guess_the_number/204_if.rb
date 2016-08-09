#
# In this program we add 3 "if" conditionals.
# In the first one, we check if the guessed number is lower than secret number.
# If it's true, then we tell user that her guess was too low
# In the second one, we check if the guessed number is higher.
# And in the last one we check if it was correct.
#

secret = rand(101)

puts "Pick number between 0 and 100:"
guess = gets.to_i
puts "You picked number #{guess}, and secret number was #{secret}"

if secret > guess
  puts "Your number was too small"
end

if secret < guess
  puts "Your number was too big"
end

if secret == guess
  puts "Your number was right!"
end
