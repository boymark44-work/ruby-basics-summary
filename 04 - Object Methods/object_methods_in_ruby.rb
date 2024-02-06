# Integer Methods in Ruby
puts "\nInteger methods in Ruby: "

puts 10.next # => 11
puts -1.next # => 0
puts

puts 10.succ # => 11
puts 20.succ # => 21
puts

puts 10.pred # => 9
puts -1.pred # => -2
puts

actor = "Stallone"
puts actor.length # => 8
puts actor.upcase # => STALLONE



# ============================================================= #


# Intro to Object Methods in Ruby
puts "\n\nIntro to Object Methods in Ruby: "

puts "Hello World".length # => 11
puts "Hello World".upcase # => HELLO WORLD
puts "TOTALLY DIFFERENT".downcase # => totally different
puts

expression = "TOTALLY DIFFERENT"
puts expression.downcase # => totally different



# ============================================================= #


# Method Chaining in Ruby
puts "\n\nMethod Chaining in Ruby: "

puts "Hi there".upcase.length.succ # => 9
puts 10.next.next.pred # => 11



# ============================================================= #


# Methods to convert an Object into another in Ruby.
puts "\n\nMethods to convert an Object into another in Ruby: "

text = 5
puts text # => 5
puts text.class # => Integer
puts text.to_i # => 5
puts text.to_i.class # => Integer
puts

puts "15 apples".to_i # => 15
puts "apples 15".to_i # => 0
puts "nonsense".to_i # => 0
puts

puts text.to_f # => 5.0
puts text.to_f.class # => Float
puts

number = 15
puts number.class # => Integer
p number.to_s # => "15", (String)
p number.to_s.class # => String
puts number.to_f # => 15.0
puts number.to_f.class # => Float
puts

percentage = 0.9
puts percentage.class # => Float
p percentage # => 0.9
puts percentage.to_s.class # => String
puts

p "5".to_s # => "5"
puts "5".to_s.class # => String
p "10".to_i # => 10
puts "10".to_i.class # => Integer
p 99.99.to_f # => 99.99
puts 99.99.to_f.class # => Float



# ============================================================= #


# String Interpolation in Ruby
puts "\n\nString Interpolation in Ruby: "

name = "Mark"
puts "Hello #{name}, how old are you?" # => Hello Mark, how old are you?
puts

age = 24
puts "I am #{age} years old." # => I am 24 years old.
puts

puts "In 5 years, I will be #{age + 5} years old!" # => In 5 years, I will be 29 old!
puts

x = 5
y = 8
puts "The sum of #{x} and #{y} is #{x + y}." # => The sum of 5 and 8 is 13.



# ============================================================= #


# The Class Method in Ruby
puts "\n\nThe Class Method in Ruby: "

puts "Hello".class # => String
puts "Ruby is fun".class # => String
puts "12345".class # => String
puts "".class # => String
puts

puts 5.class # => Integer
puts -23.class # => Integer
puts 100.class # => Integer
puts 999_999_999.class # => Integer
puts

puts 3.14.class # => Float
puts 0.23.class # => Float
puts -10.49.class # => Float



# ============================================================= #


# The inspect method
puts "\n\nThe inspect method in Ruby: "

p "Hello World\n" # => "Hello World\n"
puts "Hello World\n" # => Hello World
puts "Hello World\n".inspect # => "Hello World\n", (Works the same as the p method)



# ============================================================= #


# The nil object in Ruby:
puts "\n\nThe nil object in Ruby: "

puts nil # => (Nothing to display because nil object in Ruby represents nothingness or the absence of an object)
puts

what_is_the_value_here = "hello".upcase
puts what_is_the_value_here # => HELLO
puts

what_is_the_value_here = puts "hello"
p what_is_the_value_here # => nil
