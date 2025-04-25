balance = 0.0
loop do 
  puts "press 1 to check balance"
  puts "press 2 to Deposite money"
  puts "press 3 to withdrawl money"
  puts "press 4 to exit"
  choice = gets.chomp.to_i

  case choice
  when 1
       puts "Your Current Balance is#{balance}"
  when 2
    puts "Enter amount you want to Deposite"
     amount = gets.chomp.to_i
     balance = balance + amount
     puts "amount Added success fully"
   
  when 3
    puts "Enter amount you want to withdrawl"
    amount = gets.chomp.to_i
    
    if amount>balance
      puts "not Enough balance"
    end
    break

    balance = balance - amount
    puts "amount Withdrawl successfully"
    end
    
end


     

