
def sumumbers(n)
    if n < 1
        puts "Please enter a positive integer."
    else
        puts "The sum of the first #{n} natural numbers is: #{(1..n).sum}"
    end
end

puts "Enter a positive integer:"
n = gets.to_i
sumumbers(n)