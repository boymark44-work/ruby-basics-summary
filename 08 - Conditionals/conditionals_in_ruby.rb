# The if statement in Ruby
puts "\nThe \"if\" statement in Ruby: "

if 5 < 7
  puts "That condition is true." # => (true)
end
puts

if 5 < 3
  puts "This line won't run due to the condition being false." # => (false)
end
puts

password = "topsecret"
if password == "topsecret"
  puts "Congrats, you've logged in!" # => (true)
end

word = "kangaroo"
if word.length == 8
  puts "Hooray, the word has 8 characters" # => (true)
  puts "Another line" # => (true)
end
puts



# ============================================================= #


# Predicate methods in "if" statement
puts "\n\nPredicate methods in \"if\" statements in Ruby: "

if 5.odd?
  puts "The number is indeed odd." # => (true)
end
puts

word = "kangaroo"
if word.include?("roo")
  puts "That substring does exist." # => true
end

if word.include?("zebra")
  puts "That substring does exist." # => (false)
end



# ============================================================= #


# Truthiness and Falsiness in Ruby
puts "\n\nTruthiness and Falsiness in Ruby: "

if 5
  puts "This will not print" # => (true)
end
puts

if false
  puts "This will not be printed." # => (false, so the string inside wont be printed)
end
puts

if "Hello"
  puts "Will this print?" # => (true)
end



# ============================================================= #


# The "if-elsif" statement in Ruby
puts "\n\nThe \"if-elsif\" statement in Ruby: "

color = "Green"
#color = "Yellow"
#color = "Red"
#color = "invalid color"

if color == "Red"
  puts "Red is rad"
elsif color == "Yellow"
  puts "Yay for yellow"
elsif color == "Green"
  puts "Green is great"
else
  puts "Invalid color"
end
puts



number = 40
number = 10
#number = 65
#number = 100_000_000

# The variable that is closer to this conditional operation will be the only recognized as the basis for such operation
if number < 25
  puts "That's a small number."
elsif number < 50
  puts "That's a medium number."
elsif number < 75
  puts "That's a big number"
elsif number < 150
  puts "That number is equal to Godzilla"
else
  puts "That's an invalid number mate"
end
puts


# Syntactically correct approach but semantically wrong. In short, not recommended to use.
# This approach is syntactically correct because it uses valid Ruby syntax with if/elsif/end.
# However, it is semantically wrong because the elsif condition will never be checked.
# The elsif will only be evaluated if the if condition is false, but the if condition here
# will always be true since number < 25. So the elsif color == "Green" will never be reached.
if number < 25
  puts "First condition is true."
elsif color == "Green"
  puts "Second condition is true"
end



# ============================================================= #


# The "if-else" statement in Ruby
puts "\n\nThe \"if-else\" statement in Ruby: "

# Just replace the corresponding value if you want to execute the else block
grade = "F"

if grade == "A"
  puts "Mom will be happy"
else
  puts "Mom will be upset"
end
puts


grade = "A"
if grade == "A"
  puts "Mom will be happy"
elsif grade == "B"
  puts "Mom will be dissapointed but OK"
else
  puts "Mom will be upset"
end
puts



# ============================================================= #


# Multiple conditions using the "AND" operator in Ruby
# && - Indicates the AND logic.
# works both with && or with the keyword "and"
puts "\n\nMultiple conditions with \"&&\ or \"and\" operator in Ruby: "

# * Just uncomment and use terminal in order to execute the program below:
# print "Please enter username: "
# username = gets.chomp
# print "Please enter password: "
# password = gets.chomp

# if username == "rubydev1" and password == "topsecret"
#   puts "\nCongrats, you've logged in."
# else
#   puts "\nIncorrect, no access for you!"
# end



# ============================================================= #


# Multiple conditions using the "||" or "or" operator in Ruby
puts "\n\nMultiple conditions using the \"||\" or \"or\" operator in Ruby: "

entree = "Steak"
price = 19.99

if entree == "Steak" or price < 29.99
  puts "Atleast one of the conditions is true, purchasing meal."
end
puts


# Using descriptive variables to assign boolean logic to enhance readability by providing more context
entree = "Steak"
price = 49.99

food_is_delicious = entree == "Steak"
meal_is_affordable = price < 29.99

if food_is_delicious or meal_is_affordable
  puts "Atleast one of the conditions is satisfied, therefore let's purchase the meal."
end



# ============================================================= #


# Parentheses precedence in Ruby
puts "\n\nParentheses precedence in Ruby: "

def authenticate_agent(agent_num, name, job_title)
  if (agent_num == 007 and name == "James Bond") or job_title == "Secret Agent"
    puts "Access granted, please proceed to the intelligence department Agent #{name}."
  else
    puts "Access denied, #{name}!"
  end
end

authenticate_agent("007", "James Bond", "Secret Agent")
authenticate_agent("007", "James Bond", "Psychiatrist")
authenticate_agent("006", "Loid Forger", "House Husband")



# ============================================================= #


# The nested "if" statement in Ruby
puts "\n\nThe nested \"if\" statement in Ruby: "

# * Recommended Meal Generator
# * Time of Week | Time of Day | Meal
# * weekdays      | morning     | Cereal
# * weekdays      | night       | Chicken Nuggets.
# * weekends      | morning     | French Toast
# * weekends      | night       | Steak

def meal_plan(time_of_week, time_of_day)
  # * (Just uncomment in order to use this block of code)
  # * Without Nesting:
  if time_of_week == "weekdays" and time_of_day == "morning"
    "Cereal"
  elsif time_of_week == "weekdays" and time_of_day == "night"
    "Chicken Nuggets"
  end

  # * (Just uncomment in order to use this block of code)
  # * With Nesting:
  if time_of_week == "weekdays"
    if time_of_day == "morning"
      "Cereal"
    elsif time_of_day == "night"
      "Chicken Nuggets"
    end
  else
    if time_of_day == "morning"
      "French Toast"
    elsif time_of_day == "night"
      "Steak"
    end
  end
end

puts meal_plan("weekdays", "morning") # => Cereal
puts meal_plan("weekdays", "night") # => Chicken Nuggets
puts meal_plan("weekends", "morning") # => French Toast
puts meal_plan("weekends", "night") # => Steak



# ============================================================= #


# Ternary Operator "?" in Ruby
puts "\n\nTernary Operator \"?\" in Ruby: "

# Traditional "if-else" condition
if 1 < 2
  puts "Yes, it is"
else
  puts "Nope, it's not"
end
puts

# Executing a ternary operation using a ternary operator "?"
puts 1 < 2 ? "Yes, it is" : "Nope, it's not" # => Yes, it is
puts

# Storing a ternary operation in a variable
ternary_logic = 1 < 2 ? "Yes, it is" : "No, it's not"
puts ternary_logic # => "Yes, it is"
puts

puts "Yes".downcase == "yes" ? "Yes, they are equal" : "No, they are not" # => Yes, they are equal



# ============================================================= #


# Calling a method from another method in Ruby
puts "\n\nCalling a method from another method in Ruby: "


# Let's define a custom-made method calculator in Ruby

def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def div(a, b)
  a / b
end

# Calling a method from another method
def calculator(a, b, operation)
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    sub(a, b)
  elsif operation == "multiply"
    mul(a, b)
  elsif operation == "divide"
    div(a, b)
  else
    "Invalid operation, please try again."
  end
end

puts calculator(3, 5, "add") # => 8
puts calculator(2, 5, "subtract") # => -3
puts calculator(3, 5, "multiply") # => 15
puts calculator(20, 4, "divide") # => 5



# ============================================================= #


# The case statement in Ruby
puts "\n\nThe case statement in Ruby: "

=begin
  It is a scenario where a same object or input value is used in an operation but with different variations
  and outcomes. A shortcut approach instead of writing a bunch of "if-elsif-else" statements.
=end

def rate_my_food(food)
  # * Executing a traditional if-elsif-else statement in Ruby:
  # * (As usual, uncomment to know the output) *
  # if food == "Steak"
  #   "That food is expensive"
  # elsif food == "Sushi"
  #   "Very japanese"
  # elsif food == "Burritos"
  #   "Taste like mexican"
  # elsif food == "Quesadillas"
  #   "Ahhhh, mexican food again"
  # elsif food == "Yogurt"
  #   "Wow, good bacteria"
  # else
  #   "Please pick a food for goodness sake"
  # end

  # * Using a case statement to refactor the code:
  case(food)
  when "Steak"
    "Delicious! Kindly pass the steak sauce."
  when "Sushi"
    "Awesome, pass the wasabi."
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy filling. A perfect combination indeed!"
  when "Tofu", "Brussels Sprouts"
    "Disgusting, yuck!"
  else
    "I don't know what type of food is this"
  end

end

puts rate_my_food("Steak")
puts rate_my_food("Sushi")
puts rate_my_food("Burritos")
puts rate_my_food("Quesadillas")
puts rate_my_food("Yogurt")



# ============================================================= #


# The unless keyword in Ruby
# Kind of like an inverse of an if-statement
puts "\n\nThe unless statement in Ruby: "

# * An if-else statement:
password = "nonsense"

if password != "whiskers"
  puts "Incorrect password"
else
  puts "Welcome to the system"
end
puts


# * Executing the same operation using the "unless" keyword:
unless password == "whiskers"
  puts "Incorrect password"
end
puts


# * Using the "unless" keyword along with a predicate method
unless password.include?("a")
  puts "This will continue to run \"unless\" password has include an \"a\" in it."
end



# ============================================================= #


# Statement modifiers in Ruby
# Statement modifiers - are single-line equivalent of if-statements in Ruby
puts "\n\nStatement modifiers in Ruby: "


# *Using an if-statement:
number = 10_000

if number > 5_000
  puts "That's a huge number"
end
puts


# *Using a statement modifier:
puts "That's a huge number" if number > 5_000 # => That's a huge number


# *With multiple-conditions appliad:
number = 10_000
verified = true

puts "That's a huge number" if number > 5000 and verified
puts


# *If applied to an unless statement:
another_number = 8
another_number = 12

puts "another_number is not greater than 10" unless another_number > 10



# ============================================================= #


# Conditional assignment operator "||=" in Ruby
puts "\n\nConditional assignment \"||=\" operator in Ruby: "
# Conditional assignment operator "||=" allows you to assign a value to a variable if that variable is currently nil or false.

# Here is an example:

# x = nil
# x ||= 5
# puts x # prints 5

# This is equivalent to:

# if x.nil?
#   x = 5
# end

# The ||= operator only assigns if the left hand side is nil or false. If it already has a truthy value, it will keep that value.
# This is helpful in Ruby programs because it provides a convenient shorthand to initialize variables.
# It avoids having to explicitly check if the variable is nil/false before assigning a value.


my_value = nil
p my_value # => nil
puts

my_value ||= 5
p my_value  # => 5
puts

my_value ||= 10
p my_value # => 5, because it already recognized from the start that the value it should store is 5, unless you turn this variable into a nil object and that is the time where you can set or modify its value to something you prefer
