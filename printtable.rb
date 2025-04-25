puts "enter a number"
number = gets.chomp.to_i
puts "multiplication of #{number}"
(1..10).each do |i|
    puts "#{number}* #{i} = #{number * i}"
end
