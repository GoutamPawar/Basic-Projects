module Greetings
    def say_hello
        puts "Hello sir"
    end
end

class Office 
    include Greetings
end

p=Office.new 
p.say_hello

module Greetings
    def say_hello
        puts "Hello sir"
    end
end

class Office 
    extend Greetings
end

Office.say_hello

msg = <<~TEXT
  Hello,
  This is Ruby.
TEXT

puts msg


module Greetings
    def work_it
        puts "i am working on it"
    end
end

class Person
    extend Greetings
end

p=Person.work_it
p.work_it
