@history = []
def undo 
  lastCalculation = @history[-2]
  puts lastCalculation
  if lastCalculation
    puts "Your Previous calculation was #{lastCalculation}"
  else
    puts "No previous calculations to undo."
  end
end
# =================================================
def addition
  puts "How many numbers would you like to add?"
  count = gets.chomp.to_i
  elements = []
  count.times do |i|
    puts "Enter number #{i+1}:"
    elements << gets.chomp.to_i
  end
  result = 0
  elements.each do |num|
    result = result + num
  end
   sorted = elements
   action = "Addition and values was #{sorted}"
   @history.push(action)
  puts "Result: #{result}"
  puts "Want to Undo the tasks press 1 ? "
  choice = gets.chomp.to_i 
  case choice
  when 1
    undo 
  end
end

# =========================================
def subtraction
  puts "How many numbers would you like to subtract?"
  count = gets.chomp.to_i
  elements = []
  
  count.times do |i|
    puts "Enter number #{i+1}:"
    elements << gets.chomp.to_i
  end
  result = elements.shift
  elements.each do |num|
    result = result - num
  end
  @history.push(result)
  puts "Result: #{result}"
   
  puts "Want to Undo the tasks press 1 ? "
  choice = gets.chomp.to_i 
  case choice
  when 1
    undo 
  end
end

# =======================================
def multiplication
  puts "How many numbers would you like to multiplication?"
  count = gets.chomp.to_i
  elements = []
  count.times do |i|
    puts "Enter number #{i+1}:"
    elements << gets.chomp.to_i
  end
  result = 1
  elements.each do |num|
    result = result * num
  end
  @history.push(result)
  puts "Result: #{result}"
  puts "Want to Undo the tasks press 1 ? "
  choice = gets.chomp.to_i 
  case choice
  when 1
    undo 
  end
end

# =============================================  
def division
  puts "How many numbers would you like to divide?"
  count = gets.chomp.to_i
  elements = []
  count.times do |i|
    puts "Enter number #{i+1}:"
    elements << gets.chomp.to_f
  end
  if elements.include?(0)
    puts "Error: Division by zero is not allowed."
  else
    result = elements.shift
    elements.each do |num|
      result = result / num
    end
    puts "Result: #{result}"
      
end
end

# ========================================
def power
  puts "How many numbers would you like to power?"
  count = gets.chomp.to_i
  elements = []
  count.times do |i|
    puts "Enter number #{i+1}:"
    elements << gets.chomp.to_i
  end
  result = elements.shift
  elements.each do |num|
    result = result ** num
  end
#   @history << result
  puts "Result: #{result}"
end

# ==========================================
def factorial
  puts "Enter a number to get the factorial:"
  input = gets.chomp
  if input.match?(/^\d+$/)
    number = input.to_i
    if number < 0
      puts "Factorial is not defined for negative numbers."
    else
      result = (1..number).reduce(1, :*)
      puts "Result: #{result}"
      puts "Want to Undo the tasks press 1 ? "
      choice = gets.chomp.to_i 
      case choice
      when 1
        undo 
      end
    end 
  else
    puts "Invalid input. Please enter a non-negative integer."
  end
end

# =======================
loop do
  puts "What would you like to perform?"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Multiplication"
  puts "4. Division"
  puts "5. Power"
  puts "6. Factorial"
  puts "7. Exit"
  print "Enter your choice (1-7): "
  choice = gets.chomp.to_i
  case choice
  when 1
    addition
  when 2
    subtraction
  when 3
    multiplication
  when 4
    division
  when 5
    power
  when 6
    factorial
  when 7
    puts "Thank you!"
    break
  else
    puts "Please select a valid option."
  end
end
