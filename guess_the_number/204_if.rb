secret = rand(101)

puts "Pick number between 0 and 100:"
guess = gets.to_i
puts "You picked number #{guess}, and secret number was #{secret}"

if secret > guess
  puts "Your number was too small"
end

if secret < guess
  puts "Your number was too big"
end

if secret == guess
  puts "Your number was right!"
end
