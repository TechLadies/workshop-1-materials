secret = rand(101)

loop do

  puts "Pick number between 0 and 100:"
  guess = gets.to_i

  if secret > guess
    puts "Your number was too small"
  elsif secret < guess
    puts "Your number was too big"
  else
    puts "Your number was right!"
    break
  end

end
