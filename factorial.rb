def factorial(number)
    puts (1..number).inject(1, :*)
end