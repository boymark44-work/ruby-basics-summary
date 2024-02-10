# Define a divisible_by_three_and_four method that
# accepts a number as its argument.
# It should return true if the number is evenly divisible by both 3 and 4 .
# It should return false otherwise.
#
# Examples
# The => indicates the expected return value
# divisible_by_three_and_four(3)   => false
# divisible_by_three_and_four(4)   => false
# divisible_by_three_and_four(12)  => true
# divisible_by_three_and_four(18)  => false
# divisible_by_three_and_four(24)  => true


# My own solution:
def divisible_by_three_and_four(number)
  if number % 3 == 0 and number % 4 == 0
    true
  else
    false
  end
end

puts divisible_by_three_and_four(3) # => false
puts divisible_by_three_and_four(4) # => false
puts divisible_by_three_and_four(12) # => true
puts divisible_by_three_and_four(18) # => false
puts divisible_by_three_and_four(24) # => true
puts



# Declare a string_theory method that accepts a string as an argument.
# It should return true if the string has more than 4 characters
# or if the string includes the character "B" (capital).
#
# Examples
# The => indicates the expected return value
# string_theory("Big Mac")      => true
# string_theory("Bank")         => true
# string_theory("refrigerator") => true
# string_theory("boy")          => false
# string_theory("car")          => false


# My own solution:
def string_theory(string)
  if string.include?("B") or string.length > 4
    true
  else
    false
  end
end

puts string_theory("Big Mac") # => true
puts string_theory("Bank") # => true
puts string_theory("refrigerator") # => true
puts string_theory("boy") # => false
puts string_theory("car") # => false
puts



# Instructor solution:
def divisible_by_three_and_four(number)
  # *Let's use descriptive variables to solve the problem by providing more context on what we are trying to achieve
  divisible_by_three = number % 3 == 0
  divisible_by_four = number % 4 == 0

  divisible_by_three and divisible_by_four
end

puts divisible_by_three_and_four(3) # => false
puts divisible_by_three_and_four(4) # => false
puts divisible_by_three_and_four(12) # => true
puts divisible_by_three_and_four(18) # => false
puts divisible_by_three_and_four(24) # => true
puts


def string_theory(text)
  text.length > 4 || text.include?("B")
end

puts string_theory("Big Mac") # => true
puts string_theory("Bank") # => true
puts string_theory("refrigerator") # => true
puts string_theory("boy") # => false
puts string_theory("car") # => false
puts
