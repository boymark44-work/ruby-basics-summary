# Basic Arithmetic in Ruby
puts "Basic Arithmetic in Ruby: "

puts 1 + 4 # => 5
puts -6 + 13 # => 7
puts 10 - 6 # => 4
puts 3 * 4 * 5 # => 60
puts
puts 2 + 3 * 5 # => 17
puts (2 + 3) * 5 # => 25
puts 10 / 5 # => 2
puts 12 / 5 # => 2
puts
puts 12.0 / 5 # => 2.4
puts 12 / 5.0 # => 2.4
puts 12.0 / 5.0 # => 2.4
puts 0.5 / 2 # => 0.25
puts
puts 5 % 2 # => 1
puts 7 % 2 # => 1
puts 6 % 2 # => 0



# ============================================================= #


# Comments in Ruby
puts "\n\nComments in Ruby: "
puts
puts
puts
puts
puts "This in not a comment." # But this one is



# ============================================================= #


# Escape characters in Ruby
puts "\n\nEscape Characters in Ruby: "
puts "Some text \n more text"
puts "\tOnce upon a time"

puts "Juliet said \"Goodbye\" to Romeo" # => Juliet said "Goodbye" to Romeo
puts 'Juliet said \'Goodbye\' to Romeo' # => Juliet said 'Goodbye' to Romeo

puts "Juliet said 'Goodbye' to Romeo" # => Juliet said 'Goodbye' to Romeo
puts 'Juliet said "Goodbye" to Romeo' # => Juliet said "Goodbye" to Romeo



# ============================================================= #


# Integers and Floating-point numbers in Ruby
puts "\n\nIntegers and Floating-point numbers in Ruby: "
puts 100 # => 100
puts 0 # => 0
puts -837 # => -837
puts
puts 1_000 # => 1000
puts 9_999_999_999_999_999 # => 9999999999999999
puts 3.14 # => 3.14
puts
puts 0.50 # => 0.50
puts -10.99 # => -10.99
puts -0.93 # => -0.93



# ============================================================= #


# Intro to Exceptions
puts "\n\nIntro to Exceptions: "
puts 3 + 4
puts "miss" + "fortune"
puts "Mark " << "Glenn " << "Gabuya"
puts
#puts "4" + 3 # => Logical or Type Error, invalid operation which is adding a string to a number
#puts 3 + "4" # => Logical or Type Error, invalid operation which is adding a string to a number
puts
puts 30 / 10 # => If an Exception occur, this line wouldn't run but if valid, returns a 3



# ============================================================= #


# String Concatenations in Ruby
puts "\n\nString Concatenations in Ruby: "
puts 4 + 3 # => 7
puts "4" + "3" # => 43
puts "race" + "car" # => racecar
puts "Mark " << "Glenn " << "Gabuya"  # => Mark Glenn Gabuya. Concatenate using a Shovel Operator: "<<"



# ============================================================= #


# The p, print, and puts method in Ruby
puts "\n\nThe p, print, and puts method in Ruby: "
p "Steven Seagal" # => Steven Seagal
p 5 # => 5
p "Hi there \n line break" # =    >
puts
print "This random nonsense, " # => This random nonsense, will continue on the same line. Happy Coding. :)
print " will continue on the same line. "
print "Happy Coding. :)"
