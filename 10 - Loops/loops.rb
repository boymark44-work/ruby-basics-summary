# Loops - a seeries of instructions that is repeated until a terminating condition is reached.
puts "\nLoops in Ruby: "

3.times { print "Hello" }
puts


puts "\n\nThe while loop: "

# *An infinite loop - a loop that is run without a terminating condition
# count = 0

# while count < 10
#   puts count # => (Valid always since no terminating condition is reach)
# end
puts


# *A valid ruby loop
count = 1

while count < 10
  puts count

  count += 1 # => (Updates the value of the condition for every iteration and terminate until the condition is satisfied)
end
puts
puts count # => (10, Checking for the latest value of count)
puts


letters = "a"

while letters.length < 5
  puts letters

  # Using a shovel operator to mutate the character and eventually turn into a string
  letters << "a"
end
puts


# *General syntax of a while loop:
=begin

while true:
  # This is the Loop Body

  # A condition that would update the value of an iterator or terminate the loop completely
end

=end



# ============================================================= #


# The FizzBuzz Game:

# FizzBuzz is a popular programming problem to test a developer's
# ability to think logically with code.
#
# The problem is simple but deceptive.
#
# Define a fizzbuzz method that accepts a single number.
# The method should output every number from 1 to that argument.
#
# There are a couple caveats.
# If the number is divisible by 3, output "Fizz" instead of the number.
# If the number is divisible by 5, output "Buzz" instead of the number.
# If the number is divisible by both 3 and 5, output "FizzBuzz" instead of the number.
# If the number is not divisible by either 3 or 5, just output the number.
#
# Example: fizzbuzz(30) should print:
#
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
# 17
# Fizz
# 19
# Buzz
# Fizz
# 22
# 23
# Fizz
# Buzz
# 26
# Fizz
# 28
# 29
# FizzBuzz


def fizzbuzz(num)
  i = 1

  while i <= num
    if i % 3 == 0 and i % 5 == 0
      puts "Fizzbuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    # Update the iterator "i"
    i += 1
  end

end

puts fizzbuzz(30)



# ============================================================= #


# The next keyword in Ruby:
puts "\n\nThe next keyword in Ruby: "

# The "next" keyword - if a certain condition is reached, it automatically move or proceed to the next iteration
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0 # => (First index)
final_index = money_sentence.length - 1 # => (Last index)

while current_index <= final_index
  if money_sentence[current_index] == "$"
    puts "Found the $ at index #{current_index}"
  end

  current_index += 1
end
puts


# Using the "next" keyword to solve the same coding challenge:
money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0
final_index = money_sentence.length - 1

while current_index <= final_index
  if money_sentence[current_index] != "$"
    current_index += 1
    next
  end

  puts "Found the $ at index #{current_index}"
  current_index += 1
end



# ============================================================= #


# The "break" keyword in Ruby
puts "\n\nThe \"break\" keyword in Ruby: "

# The "break" keyword - Terminates a loop compeletely.
# Goal: Find the first iteration of "$" and terminates the program completely.

money_sentence = "I love $ in the morning, $ in the afternoon, and $ in the evening."

current_index = 0
final_index = money_sentence.length - 1
first_money_index = nil

while current_index <= final_index
  if money_sentence[current_index] == "$"
    first_money_index = current_index
    break
  end

  current_index += 1
end

puts first_money_index # => 7



# ============================================================= #


# Recursion I in Ruby
puts "\n\nRecursion I in Ruby: "


# Recursion - is when a method calls itself.
# Base Case - is a condition that tells the recursion to stop.

# Example: Factorials
# 5! = 5 * 4 * 3 * 2 * 1 = 120

# 5 * 4!
#     4 * 3!
#         3 * 2!
#             2 * 1!

# 4! = 4 * 3 * 2 * 1    = 24
# 3! = 3 * 2 * 1        = 6
# 2! = 2 * 1            = 2
# 1!                    = 1


# This function calculates the factorial of a given number recursively:
def factorial(number)
  # Base Case: if the number is equivalent to 1, return 1
  return 1 if number == 1

  # Recursive Case: multiply the number with the factorial of (number - 1)
  number * factorial(number - 1)
end

puts factorial(5) # => 120
puts factorial(6) # => 720

=begin
  *First Layer: 5 * factorial(4)
  *Second Layer: 4 * factorial(3)
  *Third Layer: 3 * factorial(2)
  *Fourth Layer: 2 * factorial(1)
  *Third Layer: 3 * factorial(2)
  *Fifth Layer: 1
=end



# ============================================================= #


# Recursion II in Ruby
puts "\n\nRecursion II in Ruby: "


# Reversing a string using the .reverse method:
puts "straw".reverse # => "warts"


=begin
  *Creating our own reverse method with iteration-based solution:
    *- The following code defines a function that takes a string as an argument and returns the reverse of that string.
    *- The function uses a while loop to iterate through the string from the last character to the first character.
    *- It then concatenates each character to a new string, which is returned as the reversed string.
=end

def reverse(text)
  first_index = 0
  last_index = text.length - 1
  reversed_text = ""

  while last_index >= first_index
    reversed_text += text[last_index]

    last_index -= 1
  end

  reversed_text # => (Returns the segmented reversed text)
end

puts reverse("straw hat")

# The underlying process:
# reverse("straw")
#   w + reverse("stra")
#     a + reverse("str")
#       r + reverse("st")
#         t + s   (we can use the s as our base case)
