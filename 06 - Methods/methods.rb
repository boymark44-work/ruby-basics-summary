# Method definition in Ruby
puts "\nMethod definition in Ruby: "

def introduce_myself()
  puts "I am handsome!"
  puts "I am talented!"
  puts "I am brilliant!"
end

puts "I am a genius" # => I am a genius

# Method calling
introduce_myself # => (Return all the Strings indicated in the puts statement)
puts
introduce_myself # => (Return all the Strings indicated in the puts statement)



# ============================================================= #


# Local variables in Ruby
puts "\n\nLocal variables in Ruby: "

hello = 5
action_star = "Jean-Claude Van Damme"

def film_movie
  action_star = "Arnold Schwarzenegger"
  puts action_star
end

film_movie # => Arnold Schwarzenegger

puts action_star # => Jean-Claude Van Damme
puts action_star # => Jean-Claude Van Damme



# ============================================================= #


# Manipulating Arguments
puts "\n\nManipulating arguments in Ruby: "

def praise_person(name, age)
  puts "#{name.upcase} is amazing." # => MARK GLENN M. GABUYA is amazing.
  puts "#{name} is charming." # => Mark Glenn M. Gabuya is charming.
  puts "#{name} is talented." # => Mark Glenn M. Gabuya is talented.
  puts "He is #{age + 5} years old." # => He is 24 years old.
end

praise_person("Mark Glenn M. Gabuya", 19)



# ============================================================= #


# Multiple parameters in Ruby
puts "\n\nMultiple parameters in Ruby: "

def praise_person(name, age)
  puts "#{name} is amazing."
  puts "#{name} is charming."
  puts "#{name} is talented."
  puts "He is #{age + 5} years old."
  puts
end

praise_person("Mark Glenn M. Gabuya", 24) # => (Returns the same as above but with this corresponding arguments)
praise_person("Boris Greyrat", 31) # => (Returns the same as above but with this corresponding arguments)
praise_person("John Doe", 26) # => (Returns the same as above but with this corresponding arguments)
puts

puts 10.between?(20, 30) # => false



# ============================================================= #


# Optional parameters and default arguments in Ruby
# Optional Parameters - Are those parameters that has a pre-defined value if no argument is provided when invoke.
puts "\n\nOptional parameters and default arguments in Ruby: "

def title_assigner(name, suffix = "The Great.")
  "#{name} #{suffix}"
end

puts title_assigner("Boris", "The Wonderful.") # => Boris The Wonderful.
puts title_assigner("Dave") # => (This is where the default parameter will come into play), Dave The Great.



# ============================================================= #


# Parameters and arguments in Ruby
puts "\n\nParameters and arguments in Ruby: "

def praise_person(name)
  puts "#{name} is amazing."
  puts "#{name} is charming."
  puts "#{name} is talented."
  puts
end

praise_person("Mark Glenn") # => (Returns the string inside the function definition along with the provided "name" argument)
praise_person("Boris") # => (Returns the string inside the function definition along with the provided "name" argument)
praise_person("John") # => (Returns the string inside the function definition along with the provided "name" argument)



# ============================================================= #


# Return Values in Ruby Part I
puts "\n\nReturn Values in Ruby Part I: "

def add_two_numbers(num1, num2)
  puts "Ok, I'm solving your math problem."

  #return "Just kidding, I'm a troll!" # => (Automatically end the execution of the method and return a value.)

  return num1 + num2 # => ,(Automatically end the execution of the method and return a value.)
end

puts add_two_numbers(23, 23) # => 46
puts

result = add_two_numbers(1 + 3, 4 + 5)
puts result # => 13
puts

sum = add_two_numbers(4, 5)
puts sum # => 9



# ============================================================= #


# Return Values Part II: Implicit return values in Ruby
puts "\n\nReturn Values Part II: Implicit return values in Ruby: "

def nothing
end

puts nothing # => nil
puts nothing.class # => NilClass
puts


def add_two_numbers(num1, num2)
  # Implicitly return the sum of num1 and num2
  # Ruby automatically recognizes the last line of a method as a return statement
  # without seeing the "return" keyword and returns a value as a response to method invocation.
  num1 + num2
end

puts add_two_numbers(3, 4) # => 7
puts

sum = add_two_numbers(4, 5)
puts sum # => 9
puts sum.class # => Integer
puts


def nothing
  puts "What will be the return value here? " # => What will be the return value here?
  # => nil
end

p nothing # => ["What will be the return value here?", nil]
