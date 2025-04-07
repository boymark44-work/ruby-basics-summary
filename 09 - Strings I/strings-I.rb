# Single-quotes and Double-quotes in Ruby
puts "\nSingle and Double Quotes in Ruby: "

puts "hello\n\n\nworld" # => non-literal (Prints the string inside along with a corresponding new-line as indicated)
puts 'hello\n\n\nworld' # => literal: (Prints the string along with the "\n\n\n" because if we use this symbol, it does not recognize what is an escape character )
puts


# Single-quotes: Taking every character or strings literally, no escape characters is recognize.
puts 'C:\Documents\news' # => (Useful for file reading, manipulation, etc.)
puts


phrase = "Hello World"
puts "My phrase is #{phrase}" # => My phrase is Hello World
puts 'My phrase is #{phrase}' # => My phrase is #{phrase}



# ============================================================= #


# Multi-line strings in Ruby
puts "\n\nMulti-line strings in Ruby: "

poetry = <<MLS
  What a beautiful language Ruby is
  It allows you to write multiple lines
  Split your words up across mutliple lines
  Everything still looks nice and fine.
  - Shakespeare
MLS

puts poetry # => (Prints the poem inside)



# ============================================================= #


# String comparisons in Ruby
puts "\n\nString comparisons in Ruby: "

a = "Hello"
b = "hello"
c = "Hello"

puts a == b # => false
puts a == c # => true
puts a == b # => false
puts a == "hello" # => false
puts

puts a != b # => true
puts a != c # => false
puts

# Follows the order of the English Alphabet
puts "A" < "B" # => true
puts "A" < "Z" # => true
puts "H" < "E" # => false
puts

puts "L" > "F" # => true
puts "L" < "M" # => true
puts

# Uppercase letters have lower precedence over lowercase ones
puts "Z" < "a" # => true
puts "a" < "z" # => true
puts "a" < "A" # => false
puts

# Evaluate, character by character. Follow the established precedence from the alphabet.
puts "hello" < "help" # => true
puts



# ============================================================= #


# String concatenation options in Ruby
puts "\n\nString concatenation options in Ruby: "

# Concatenating strings using "+" operator:
first_name = "Harry"
last_name = "Potter"

puts first_name + " " + last_name # => HarryPotter
puts first_name + last_name # => HarryPotter
puts last_name + first_name # => PotterHarry
puts first_name # => Harry
puts last_name # => Potter
puts


# Concatenating strings using string methods:
# Usually, string manipulation using methods often results to complete alteration or modification of the object variable
# so proceed with caution
first_name.concat(last_name)
puts first_name # => HarryPotter

# Let's call the object variable again
puts first_name # => HarryPotter

puts first_name.prepend(last_name) # => PotterHarryPotter
puts first_name # => PotterHarryPotter


# Concatenating strings using the Shovel Operator "<<":
# Works the same as the concat method
wrestler = "Stone Cold"
puts wrestler # => Stone Cold

wrestler << " Steve Austin" << " WWF Champion"
puts wrestler # => Stone Cold Steve Austin WWF Champion



# ============================================================= #


# The length and size string methods in Ruby
puts "\n\nThe length and size methods in Ruby: "

puts "hello world".length # => 11
puts "   # # $ $@$ @#  ".length # => 17
puts "".length # => 0
puts

puts "hello world".size # => 11
puts "   # # $ $@$ @#  ".size # => 17
puts "".size # => 0
puts



# ============================================================= #


# Intro to index positions in Ruby
puts "\n\nIntro to index positions in Ruby: "

story = "Once upon a time"

# Extracting a character by its index position using the bracket syntax:
puts story[0] # => o
puts story[1] # => n
puts story[2] # => c
puts story[3] # => e
puts story[4] # => " "
p story[100] # => nil
puts


# Extracting a character through negative indexing using the bracket syntax:
puts story[-1] # => e
puts story[-2] # => m
puts story[-3] # => i
puts story[-10] # => p
p story[-100] # => nil
puts


# Extracting a character using the slice method:
puts story.slice(0) # => o
puts story.slice(3) # => e
puts story.slice(-11) # => u
p story.slice(4000) # => nil
p story.slice(-4000) # => nil
puts



# ============================================================= #


# Extracting multiple characters from a string
puts "\n\nExtracting multiple characters from a string: "

story = "Once upon a time in a land far, far away..."

# variable[starting-index, no. of char to pull]
puts story[5, 4] # => upon
puts story[0, 5] # => Once
puts story[0, story.length] # => Once upon a time in a land far, far away...
puts story[-7, 5] # => away.
puts


# Using the slice method:
puts story.slice(5, 4) # => upon
puts story.slice(0, 5) # => Once
puts story.slice(0, story.length) # => Once upon a time in a land far, far away...
puts story.slice(-7, 5) # => away.



# ============================================================= #


# Overwriting characters in a string in Ruby
puts "\n\nOverwriting characters in a string in Ruby: "

thing = "rocket ship"

# Overwrite a character by its index position:
thing[0] = "p"
puts thing # => pocket ship
puts

thing[1] = "a"
puts thing # => packet ship
puts

thing[9] = "o"
puts thing # => packet shop
puts


# Overwrite multiple characters from a string:
fact = "I love blueberry pie"

# Overwrite "blue" with "rasp", "cherry", and "red"
# Ruby automatically adjust of the given replacement does
# not align with the provided argument or no. of strings to replace

fact[7, 4] = "rasp"
#fact[7, 4] = "cherry" # => I love cherryberry pie
#fact[7, 4] = "red" # => I love redberry pie
puts fact # => I love raspberry pie



# ============================================================= #


# Insert a character using the insert method in Ruby
puts "\n\nInsert a character using the insert method in Ruby: "

typo = "GeorgWashington"


# .insert(starting-index, char-to-insert)
typo.insert(5, "e ")
puts typo # => George Washington
puts


typo = "George Washingto"
typo.insert(-1, "n")
puts typo # => George Washington

puts typo # => George Washington



# ============================================================= #


# The empty and nil methods in Ruby
puts "\n\nThe empty and nil methods in Ruby: "

# The empty? predicate method:
puts "".empty?
puts "abc".empty?
puts "".empty?
puts


# The nil? predicate method:
puts "hello".nil?
puts 5.nil?

something = nil
puts something.nil?



# ============================================================= #


# Character case methods in Ruby:
puts "\n\nCharacter case methods in Ruby: "

puts "Eiffel Tower".upcase # => EIFFEL TOWER
puts "Eiffel Tower".downcase # => eiffel tower
puts


# Inverts the current case of our string or character from upcase to downcase and vice-versa:
puts "Eiffel Tower".swapcase # => eiFFEL tOWER
puts


# Returns a new string with the first character being Capitalized
puts "eiffel tower".capitalize # => Eiffel tower
puts "EIFFEL TOWER".capitalize # => Eiffel tower


tourist_hotspot = "Eiffel Tower"
puts uppercased_hotspot = tourist_hotspot.upcase # => EIFFEL TOWER
puts tourist_hotspot # => Eiffel Tower


# Important Note: None of these methods permanently alter, modify, or mutated our object as we can see from the example above.



# ============================================================= #


# The reverse method in Ruby
puts "\n\nThe reverse method in Ruby: "

puts "Ruby".reverse # => ybuR
puts "321".reverse # => 123
puts "!@#$%^".reverse # => ^%$#@!



# ============================================================= #


# The bang! method in Ruby

=begin
  Ends with an exclamation symbol "!"
  Performs some kind of mutation permanently in which it alters or modify the original state of the object in which
  the method is invoked upon.
=end

puts "\n\nThe bang! method in Ruby: "

word = "spaghetti"
puts word.capitalize # => Spaghetti
puts word # => spaghetti
puts


# Mutate the object using the bang! method:
word.upcase!
puts word # => SPAGHETTI
puts

word.downcase!
puts word # => spaghetti
puts

word.reverse!
puts word # => ittehgaps
puts

word.swapcase!
puts word # => ITTEHGAPS


# Calling the object to identify its current state:
puts word # => ITTEHGAPS
puts word.class # => String
