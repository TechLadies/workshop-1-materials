#
# The next version introduces a random number.
# Guess the number game is about trying to guess which number computer picked.
# Function rand generates a random number from 0 up to whatever number we
# provide. However it will never pick the maximum number we give it, so to pick
# number from 0 to 100, we need to use 101 as an argument.
#
# This version fo a game simply picks random number, then ask player to guess
# and prints both numbers
#

secret = rand(101)

puts "Pick number between 0 and 100:"
guess = gets.to_i
puts "You picked number #{guess}, and secret number was #{secret}"
