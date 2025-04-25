def factors(number)
    (1..number).each { |i| puts i if number % i == 0 }
end
