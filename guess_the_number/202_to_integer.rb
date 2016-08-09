#
# The second version of the program is smarter.
# By calling the function to_i on whatever user inputs, we tell the program to
# treat that information as a number.
#
# When running this program we learn that if user puts characters that are not
# numbers, program will convert it to number 0.
# There is an exception! If user puts some text that starts with a number (but
# contains also other characters), program will only take the digits (until the
# first non-digit) character and use it, ignoring the rest.
#

puts "Pick number between 0 and 100:"
guess = gets.to_i
puts "You picked number #{guess}"
