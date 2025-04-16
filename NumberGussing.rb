random_number = rand(1...10)

puts "Welcome to the Number Guessing Game!"
puts "I have picked a number between 1 and 100. Can you guess it?"

loop do
    print "Enter your guess: "
    guess = gets.chomp.to_i
    if guess < random_number
        puts "Too low!"
    elsif guess > random_number
        puts "Too high!"
    else
        puts "Correct! The number was #{random_number}."
        break
    end 
end

puts "Thanks for Playig the game "
puts "Do You want to play again ?"

