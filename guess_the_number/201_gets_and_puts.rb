#
# The first version of our game simply asks user to pick a number
# and later prints it.
# To get a number from user we use function called gets. This function waits for
# a player to input something on their keyboard and press enter.
#
# This program does not know if user inputs a number or some other text. It just
# takes it and prints it (it treats it as a text).
#

puts "Pick number between 0 and 100:"
guess = gets
puts "You picked number #{guess}"
