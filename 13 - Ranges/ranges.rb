# Intro to Ranges in Ruby
puts "\nIntro to Ranges in Ruby: "


# * A close range - is denoted with ".." which means that this range is inclusive in nature.
# * An open range - is denoted with "..." which means that this range is exclusive and therefore excluding the last element.


inclusive_num = 1..5
exclusive_num = 1...5


# Invoking a Class method for Range:
p inclusive_num # => 1..5
p inclusive_num.class # => Range
puts

p exclusive_num # => 1...5
p exclusive_num.class # => Range
puts


# Invoking the .first and .last methods in Range without proving an argument:
p inclusive_num.first # => 1
p exclusive_num.first # => 1
puts

p inclusive_num.last # => 5
p exclusive_num.last # => 5
puts


# Invoking the .first and .last methods in Ranges with arguments provided:
p inclusive_num.first(3) # => [1, 2, 3]
p exclusive_num.first(3) # => [1, 2, 3]
puts

p inclusive_num.last(3) # => [3, 4, 5]
p exclusive_num.last(3) # => [2, 3, 4]
puts

p inclusive_num.last(1) # => [5]
p exclusive_num.last(1) # => [4]
puts


# Invoking parentheses operator for the purpose of readability:
p (2..1).last # => 1
p (5...13).last # => 13



# ============================================================= #


# The Alphabetical Range - starts from a to z
puts "\n\nThe Alphabetical Range that evaluates from a to z: "


alphabet = "a".."z"
puts alphabet # => a..z
puts


# Invoking the class method:
p alphabet.class # => Range
puts


# Invoking the .first and .last methods with and without arguments:
p alphabet.first # => "a"
p alphabet.last # => "z"
puts

p alphabet.first(3) # => ["a", "b", "c"]
p alphabet.last(5) # => ["v", "w", "x", "y", "z"]
puts


# Uppercase over Lowercase in terms of precedence
# "A" through "Z" up to "a" through "z"

alphabet = "A".."z"
p alphabet # => "A".."z"
puts


p alphabet.first(40) # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h"]
p alphabet.last # => "z"



# ============================================================= #


# The include? and member? predicate methods for Ranges in Ruby
puts "\n\nThe include? and member? predicate methods for Ranges in Ruby: "


# Remove the hash to use the desired type of Range
alphabet = "a".."z" # => (Inclusive)
#alphabet = "a"..."z" # => (Exclusive)


# Invoking the include? method:
p alphabet.include?("j") # => true
p alphabet.include?("z") # => true
p alphabet.include?("J") # => false
puts


# Invoking the member? method:
p alphabet.member?("j") # => true
p alphabet.member?("z") # => true
p alphabet.member?("J") # => false
puts


# Invoking the equality "===" operator - used for checking whether a particular element is included in the Range
p alphabet === "j" # => true
p alphabet === "z" # => true
p alphabet === "J" # => false
puts



# ============================================================= #


# Generating random numbers in Ruby
puts "\n\nGenerating random numbers in Ruby: "


# The rand method - generates a random floating-point number
p rand
puts


# * Using the .round method to determine the precise decimals for floating-point values
# * Note: Every floating-pouint numbers are random in nature, so output may vary every interpretation
p rand.round(2)
p rand.round(4)
p rand.round(2)
puts


# * The rand method with arguments:
# * The rand method generates a random number.
# * When passed an integer argument n, it generates a random integer between 0 and n-1.
p rand(100)
p rand(101)
p rand(1)
puts


# Generating random numbers using Ranges:
p rand(50..100)
p rand(50...60)



# ============================================================= #


# Extracting multiple characters or elements in Ruby
puts "\n\nExtracting multiple characters or elements in Ruby: "


story = "Once upon a time in a land far, far away..."


# * Starts from 27th index up to 39th inclusively:
p story[27..39] # => "far, far away"
p story.slice(27..29) # => "far"
puts


# * Starts from 27th index up to 39th exclusively:
p story[27...39] # => "far, far awa"
p story.slice(27...29) # => "fa"
puts


# Invoking a Range object even going beyond its limits:
p story[27..200] # => "far, far away..."
p story.slice(27..200) # => "far, far away..."
puts


# Referencing a sequence of characters that we want to overwrite:
story[12..15]
p story # => "Once upon a time in a land far, far away..."
puts

numbers = [1, 3, 5, 7, 9, 15, 21, 18, 6]
p numbers # => [1, 3, 5, 7, 9, 15, 21, 18, 6]
p numbers[4..6] # => [9, 15, 21]
p numbers.slice(4..6) # => [9, 15, 21]
puts



# ============================================================= #


# The case statement with Ranges in Ruby
puts "\n\nThe case statement with Ranges in Ruby: "

# 90 to 100 is an A
# 80 to 89 is a B
# 70 to 79 is a C
# 60 to 79 is a D
# < 60 is an F


def calculate_test_grade(grade)
  # Use case statement:
  case grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..79 then "D"
    else "F"
  end
end

p calculate_test_grade(90) # => A
p calculate_test_grade(83) # => B
p calculate_test_grade(78) # => C
p calculate_test_grade(62) # => D
p calculate_test_grade(13) # => F
p calculate_test_grade("Nonsense") # => F



# ============================================================= #


# Converting Ranges to Arrays in Ruby
puts "\n\nConverting Ranges to Arrays in Ruby: "


letters_range = "A".."T"
p letters_range # => "A".."T"
p letters_range.class # => Range
#p letters_range[0] # => NoMethodError, (Bracket syntax is not recognize as a valid method)
puts


# Converting Ranges into Arrays in order to invoke several methods available in Arrays:
letters_array = letters_range.to_a
p letters_array # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"]
p letters_array.class # => Array
p letters_array[0] # => "A"
p letters_array[10] # => "K"
puts

numbers_range = 415...450
p numbers_range.to_a # => [415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449]
