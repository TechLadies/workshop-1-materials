#
# This program shows the difference between dividing integers and real numbers.
# When dividing numbers, if both numbers are integers, the result will be
# integer as well.
# If at least one number is of float type (that's how we call non-integers in Ruby),
# the result will be of float type as well.
# The outcome of these lines of code will therefore be: 1, 1.2, 1.2, 1.2
#

puts 6 / 5
puts 6.0 / 5
puts 6 / 5.0
puts 6.0 / 5.0
