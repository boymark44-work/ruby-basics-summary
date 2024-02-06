# Basic Assignment and Assignment shortcuts in Ruby.
puts "Basic assignment and assignment shortcuts in Ruby: "

a = 10
a += 7
puts a # => 17

b = 100
b -= 40
puts b # => 60

c = 3
c *= 4
puts c # => 12

d = 50
d /= 5
puts d # => 10

name = "Mark"
name += " The Great."
puts name # => Mark The Great



# ============================================================= #


# Constants in Ruby
puts "\n\nConstants in Ruby: "

PI = 3.14159
TAX_RATE = 0.07
puts PI # => 3.14159
puts TAX_RATE # => 0.07

TAX_RATE = 0.13
puts TAX_RATE # => 0.13


# ============================================================= #


# Declaring variables in Ruby
puts "\n\nDeclaring variables in Ruby: "

age = 24
puts age # => 24
puts

name = "Mark"
last_name = "Gabuya"
puts name # => Mark
puts last_name # => Gabuya
puts

puts age + 7 # => 31
puts name + last_name # => MarkGlenn
puts

age = 31
puts age # => 31
puts

age_in_ten_years = age + 10
puts age_in_ten_years # => 41
puts

age = age + 7
puts age # => 38
puts

chameleon = 24
chameleon = "Some random text"
chameleon = 3.14
puts chameleon # => 3.14



# ============================================================= #


# Triggering the NameError Exception in Ruby
puts "\n\nTriggering the NameError Exception in Ruby: "

favorite_food = "Sushi"
#puts favorite_foo # => NameError Exception

puts favorite_food



# ============================================================= #


# Parallel variable assignment in Ruby:
puts "\n\nParallel variable assignment in Ruby: "

a = 10
b = 20
c = 30
puts a, b, c # => (Prints the corresponding value in every new-line)
puts

a, b, c = 10, 20, 30
puts a, b, c # => (The same as above)
puts

p a, b, c # => (The same as above, but more detailed because it returns the corresponding datatype)
puts

print a, b, c # => 10, 20, 30 (Basically prints on the same line)



# ============================================================= #


# Swapping variable values in Ruby
puts "\n\nSwapping variable values in Ruby: "

a = 1
b = 2
puts a, b # => 1, 2
puts

a, b = b, a
puts a, b # => 2, 1
