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

