# Check if a string is a palindrome
str = "deifid"
def palindrome(str)
    str == str.reverse
end
puts palindrome(str) 
str = "madam"
puts palindrome(str)


# Calculate the factorial of a number
def factorial(n)
    return 1 if n == 0
    n * factorial(n - 1)
end 
puts factorial(5)