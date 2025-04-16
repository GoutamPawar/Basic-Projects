print "Enter your weight in kg: "
weight = gets.chomp.to_f
print "Enter your height in meters: "
height = gets.chomp.to_f
bmi = weight / (height ** 2)
puts "Your BMI is: #{bmi.round(2)}"
case
when bmi < 18.5
  puts "You are underweight."
when bmi >= 18.5 && bmi < 24.9
  puts "You have a normal weight."
when bmi >= 25 && bmi < 29.9
  puts "You are overweight."
else
  puts "You are obese."
end