#
# In the next step we introduce a new feature of the game: counting how many
# tries did the player need before she got the right number. To do this we need
# 3 steps:
# - at first, we need to add new variable, "number_of_tries" and assign a value
# 0 to it (because before the first try, there has been 0 tries)
# - then we need to increment the value of that variable by 1 whenever user
# makes a guess. For that we use a new operator "+=" which basically means:
# increase the value of variable by a provided number
# - lastly, we need to show this number when player finally wins the game. We do
# it just before the "break" line
#

secret = rand(101)
number_of_tries = 0

def ask_for_number
  puts "Pick number between 0 and 100:"
  return gets.to_i
end

loop do
  number_of_tries += 1
  guess = ask_for_number
  if secret > guess
    puts "Your number was too small"
  elsif secret < guess
    puts "Your number was too big"
  else
    puts "Your number was right!"
    puts "You tried #{number_of_tries} times"
    break
  end
end

