#
# This program prints results of basic arithmetic operations. Once of them is
# addition, another is multiplication. These are very straitghtforward
# operations.
# The third one is quite surprising, because it prints 1, instead of 1.(3).
# This is because both 40 and 30 are considered integers, and when dividing
# 2 integers, Ruby will always return integer as well.
# The last operation is exponentiation
#

puts 10 + 40
puts 200 * 50
puts 40 / 30
puts 33 ** 2
