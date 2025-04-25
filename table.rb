def print_table(number)
    (1..10).each do |i|
        puts "#{number} x #{i} = #{number * i}"
    end
end

print_table(5)