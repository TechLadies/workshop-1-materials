#
# The next step introduces a word "return". What we change in this version is to
# move 2 lines of code out of the loop and put it to a separate function. It
# does not have any impact on how program works, it will work the same way as before.
#
# The "return" keyword followed by some value means that we give this value back
# to wherever the function was called. In this case, we call the function in
# line number 23, where we assign the result of a function to variable called
# "guess". The result of a function is decided with the word "return" and in our
# case, the result is whatever value user provides via keyboard, converted to
# a number.
#
#

secret = rand(101)

def ask_for_number
  puts "Pick number between 0 and 100:"
  return gets.to_i
end

loop do
  guess = ask_for_number
  if secret > guess
    puts "Your number was too small"
  elsif secret < guess
    puts "Your number was too big"
  else
    puts "Your number was right!"
    break
  end
end
