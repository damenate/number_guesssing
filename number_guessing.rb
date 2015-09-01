def random_number()
  number = rand(1..100)
end
def emptynil(guess)
  return true if guess.empty? || guess.nil?
  return false
end

previous_guesses = []
correct_number = random_number
counter = 0

puts "Guess a number between 1 and 100 and you win! You have 5 chances!"
puts "What is your guess?"

loop do
  guess = gets.chomp
  if emptynil(guess)
    puts "I pity the fool that doesn't know his numbers!"
  next
end

  if previous_guesses.include?(guess.to_i)
    puts "I pity the fool who guesses the same thing TWICE! Guess again!"

  elsif guess.to_i > correct_number.to_i
    puts "I pity the fool who guesses too high! Guess again!"
    previous_guesses << guess.to_i

  elsif guess.to_i < correct_number.to_i
    puts "I pity the fool who guesses too low! Guess again!"
    previous_guesses << guess.to_i

  elsif correct_number.to_i == guess.to_i
    puts "WINNER WINNER CHICKEN DINNER!"
    break
  end
     counter += 1
  if counter == 5
    puts "Thats 5 guesses sucker, YOU LOSE!"
    break
  end
end
