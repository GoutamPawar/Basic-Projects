

def palindrome?(string)
    sanitized_string = string.downcase.gsub(/[^a-z0-9]/i, '')
    sanitized_string == sanitized_string.reverse
end

puts "Enter a string to check if it's a palindrome:"
input = gets.chomp

if palindrome?(input)
    puts "'#{input}' is a palindrome!"
else
    puts "'#{input}' is not a palindrome."
end