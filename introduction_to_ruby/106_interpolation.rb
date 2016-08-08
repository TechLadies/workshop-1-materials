#
# Whenever we want to mix together a piece of text with a result of some code,
# we can use string interpolation. Whatever is between double quotes, is
# considered just a text by a program. However, if we use #{ } characters there,
# whatever appears between { and } will be considered a code and will be
# processed by the program.
# Therefore the following code will print 7 + 15 = 19 (which is obviously an
# error, it just illustrates that the first and second part are independent)
#

puts "7 + 15 = #{7 + 12}"
