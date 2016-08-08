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
