def prime?(number)
    if number < 2
        puts "Not Prime"
        return
    end
    (2..Math.sqrt(number)).each do |i|
        if number % i == 0
            puts "Not Prime"
            return
        end
    end
    puts "Prime"
end