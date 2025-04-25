
def numbers(n)
    (1..n).each { |i| puts i }
end

puts "Enter the value of N:"
n = gets.to_i
numbers(n)
