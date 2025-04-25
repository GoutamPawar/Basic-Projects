# range1 = (1..10).to_a
# if ((1..10) === 11)
#     puts "5 lies in (1..10)"
#  end
 
#  if (('a'..'j') === 'c')
#     puts "c lies in ('a'..'j')"
#  end
 
#  if (('a'..'j') === 'z')
#     puts "z lies in ('a'..'j')"

# else
#     puts "Values Not found"
# end
# Assume a range
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5} 
puts "Rejected values are #{ret}"

digits.each do |digit|
   puts "In Loop #{digit}"
end


   