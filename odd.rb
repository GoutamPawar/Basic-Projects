def noddnumbers(n)
    (1..n).each { |i| puts i * 2 - 1 }
end

puts "Enter the number of odd numbers to display:"
number = gets.to_i
noddnumbers(number)
