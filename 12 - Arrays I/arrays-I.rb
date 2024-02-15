# Intro to Arrays I in Ruby
puts "\nIntro to Arrays I in Ruby: "

# An array with 6 elements
numbers = [4, 8, 15, 16, 23, 42]
p numbers
puts


# A valid array definition but not advisable due to having elements of various types may cause confusion
things = [4, true, "Hello", 10.99]
p things
puts


# An array is ideal for storing elements with the same type
toys = ["Teddy Bear", "Water Gun", "Board Game"]
p toys
puts

registrations = [true, true, false, false, true, false]
p registrations
puts



# ============================================================= #


# Nested arrays in Ruby
puts "\n\nNested arrays in Ruby: "


# An array(s) within an array
spreadsheet = [
  ["Student", "Class", "Grade"],
  ["Sally", "Computer Science", 95],
  ["Ingrid", "Physics", 45]
]

p spreadsheet
puts


# Assigning each arrays into their respective variables
first_row, second_row, third_row = spreadsheet[0], spreadsheet[1], spreadsheet[2]
p first_row
p second_row
p third_row
puts



# ============================================================= #


# Short-hand syntax for defining an array in Ruby
puts "\n\nShort-hand syntax for defining an array in Ruby: "


# The usual way:
names = ["Jack", "Jill", "John", "James"]
p names # =>
puts


# Using the short-hand syntax: "%w", no need for double-quotes and comma for separation
names = %w[Jack Jill John James]
p names



# ============================================================= #


# Access individual elements of an array through their index positions
puts "\n\nAccess individual elements through their index positions: "


fruits = %w[Apple Orange Grape Banana]


# Using the bracket syntax:
puts fruits[0] # => Apple
puts fruits[1] # => Orange
puts fruits[2] # => Grape
puts fruits[3] # => Banana
p fruits[100] # => nil
puts


# Access individual elements through negative indexing:
puts fruits[-1] # => Banana
puts fruits[-2] # => Grape
puts fruits[-3] # => Orange
puts fruits[-4] # => Apple
p fruits[-10] # => nil
puts


# Using the .slice method
puts fruits.slice(0) # => Apple
puts fruits.slice(1) # => Orange
puts fruits.slice(2) # => Grape
puts fruits.slice(3) # => Banana
p fruits.slice(10) # => nil
puts


# Negative indexing through the slice method:
puts fruits.slice(-1) # => Banana
puts fruits.slice(-2) # => Grape
puts fruits.slice(-3) # => Orange
puts fruits.slice(-4) # => Apple
p fruits.slice(-10) # => nil
puts


# Invoking the bracket method to accomplish the same operation:
puts fruits.[](0) # => Apple
puts fruits.[](1) # => Orange
puts fruits.[](2) # => Grape
puts fruits.[](3) # => Banana
p fruits.[](10) # => nil
puts


# Overwriting eleements using their index positions:
fruits = %w[Apple Orange Grape Banana]
p fruits # => (Prints objectively the array elements)

fruits[1] = "Watermelon"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana"]

fruits[4] = "Raspberry"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry"]

fruits[10] = "Bayabas"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, nil, nil, nil, "Bayabas"]

fruits[7] = "Durian"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, "Durian", nil, nil, "Bayabas"]



# ============================================================= #


# Access array elements using the .fetch method
puts "\n\nAccess array elements using the .fetch method: "


airports = %w[JFK LAX Heathrow]

puts airports.fetch(2) # => Hearthrow
puts airports.fetch(-2) # => LAX
puts


# Raising an Exception:
#puts airports.fetch(100) # => IndexError


p airports.fetch(100, "Some Airport") # => Some Airport, since in 101th index there is no element yet that is why we managed to fetch the "Some Airport" string
puts airports.fetch(1, "Some Airport") # => LAX, this string already occupies the 2nd index element



# ============================================================= #


# Access and overwrite multiple array elements using the bracket syntax
puts "\n\nAccess and overwrite multiple array elements using the bracket syntax: "


sesame_street = %w[
  Elmo
  Big-Bird
  Cookie-Monster
  Bert
  Ernie
  Oscar
]

# *Syntax: array[index, no. of elements to return]
p sesame_street[0, 3] # => ["Elmo", "Big-Bird", "Cookie-Monster"]
p sesame_street[2, 4] # => ["Cookie-Monster", "Bert", "Ernie", "Oscar"]
p sesame_street[3, 1] # => ["Bert"]
p sesame_street[3, 10] # => ["Bert", "Ernie", "Oscar"]
puts


# Using the .slice method to accomplish the same results
p sesame_street.slice(0, 3) # => ["Elmo", "Big-Bird", "Cookie-Monster"]
p sesame_street.slice(2, 4) # => ["Cookie-Monster", "Bert", "Ernie", "Oscar"]
p sesame_street.slice(3, 1) # => ["Bert"]
p sesame_street.slice(3, 10) # => ["Bert", "Ernie", "Oscar"]
puts


# Overwrite or insert multiple elements through their index positions:
sesame_street[3, 2] = %w[Stinky Kermit]
p sesame_street # => ["Elmo", "Big-Bird", "Cookie-Monster", "Stinky", "Kermit", "Oscar"]

sesame_street[4, 2] = %w[Bert Ernie Julia]
p sesame_street # => ["Elmo", "Big-Bird", "Cookie-Monster", "Stinky", "Bert", "Ernie", "Julia"]



# ============================================================= #


# Access multiple array elements using the .values_at method
puts "\n\nAccess multiple array elements using the .values_at method: "


tv_channels = %w[CBS UPN CW FOX NBC ESPN]
p tv_channels.values_at(0) # => ["CBS"]
p tv_channels.values_at(0, 4) # => ["CBS", "NBC"]
p tv_channels.values_at(1, 3, 5) # => ["UPN", "FOX", "ESPN"]
puts


# Using the negative indexing approach:
p tv_channels.values_at(1, -1) # => ["UPN", "ESPN"]
p tv_channels.values_at(-1, 1) # => ["ESPN", "UPN"]
puts


# Returning duplicate values:
p tv_channels.values_at(3, 3) # => ["FOX", "FOX"]
p tv_channels.values_at(5, -1) # => ["ESPN", "ESPN"]
puts


# If trying to access an index position that is invalid, it return nil
p tv_channels.values_at(0, 1, 10) # => ["CBS", "UPN", nil]
p tv_channels.values_at(0, 1, 10, -100) # => ["CBS", "UPN", nil, nil]



# ============================================================= #


# The .first and .last method in Ruby
puts "\n\nThe .first and .last method in Ruby: "


sushi = %w[Salmon Tuna Shrimp Eel Yellowtail]


# Using the .first method - It return(s) the first element(s) of an array:
p sushi.first # => "Salmon"
p sushi.first(4) # => ["Salmon", "Tuna", "Shrimp", "Eel"]
p sushi.first(3) # => ["Salmon", "Tuna", "Shrimp"]
p sushi.first(1) # => ["Salmon"]
p sushi.first(0) # => []
puts


# Using the .last method - It return(s) the last element(s) of an array:
p sushi.last # => "Yellowtail"
p sushi.last(4) # => ["Tuna", "Shrimp", "Eel", "Yellowtail"]
p sushi.last(3) # => ["Shrimp", "Eel", "Yellowtail"]
p sushi.last(1) # => ["Yellowtail"]
p sushi.last(0) # => []
puts



# ============================================================= #


# The .length, .size, and .count methods in Ruby
puts "\n\nThe .length, .size, and .count methods in Ruby: "


puts "Double Whopper".length # => 14
puts


# Using the .length method:
puts [1, 2, 3, 4].length # => 4
puts ["Hi", "there", nil].length # => 3
puts [].length # => 0
puts


# Using the .size method:
puts [1, 2, 3, 4].size # => 4
puts ["Hi", "there", nil].size # => 3
puts [].size # => 0
puts


# Using the .count method:
puts [1, 2, 3, 4].count # => 4
puts ["Hi", "there", nil].count # => 3
puts [].count # => 0



# ============================================================= #


# The empty? and nil? predicate methods in Ruby
puts "\n\nThe empty? and nil? predicate methods in Ruby: "


# Using the empty? method:
puts ["A", "B"].empty?
puts [].empty?
puts [].empty? == 0
puts


# Using the nil? method:
puts ["A", "B"].empty?
puts [].empty?
puts [].empty? == 0
puts



# ============================================================= #


# The Equality and Inequality operators in Ruby in an array
puts "\n\nThe Equality and Inequality operators in Ruby in an array: "


candy = %w[Skittles Starbursts Snickers]
vegetables = %w[Radishes Onions]
desserts = %w[Skittles Starbursts Snickers]
sweets = %w[Skittles Starbursts snickers]


# Using an equality operator: "=="
puts candy == desserts # => true
puts candy == vegetables # => false
puts candy == sweets # => false
puts


# Using an inequality operator: "!="
puts candy != desserts # => false
puts candy != vegetables # => true
puts candy != sweets # => true



# ============================================================= #


# The Spaceship operator "<=>" also known as the "combined comparison operator" in Ruby
puts "\n\nThe Spaceship operator \"<=>\" in Ruby: "


# *"<>" - Returns -1, 0, 1 or nil


# * Returns 0 if the two objects that are being compared to one anther are equal:
p 5 <=> 5 # => 0
p [3, 4, 5] <=> [3, 4, 5] # => 0
puts


# * Returns -1 if the the value on the left object is lesser than the right:
p 5 <=> 10 # => -1
p [1, 2, 4] <=> [3, 4, 5] # => -1
puts


# * Returns 1 if the value on the left object is greater than the right
p 5 <=> 3 # => 1
p [1, 10, 5] <=> [1, 5, 8] # => 1
puts


# * Returns nil if the values are incomparable or not valid to compare with
p 5 <=> [1, 2, 3] # => nil
p [nil, 1, 2] <=> [0, 1, 2] # => nil



# ============================================================= #


# The .push method and shovel operator in Ruby
puts "\n\nThe .push method and shovel operator in Ruby: "


# The .push method mutates the object from its original state:
soups = ["French Onion", "Clam Chowder", "Chicken Noodle"]

# Pushing a new element unto the array called "Miso"
soups.push("Miso")
p soups # => ["French Onion", "Clam Chowder", "Chicken Noodle", "Miso"]
puts

soups.push("Wonton", "Hot and Sour")
p soups # => ["French Onion", "Clam Chowder", "Chicken Noodle", "Miso", "Wonton", "Hot and Sour"]
puts


# The Shovel operator: "<<"
locations = ["Airport", "Bar", "Saloon"]

# Using the Shovel Operator to append a new element unto the array:
locations << "House"
p locations # => ["Airport", "Bar", "Saloon", "House"]

locations << "Rodeo" << "Theme Park"
p locations # => ["Airport", "Bar", "Saloon", "House", "Rodeo", "Theme Park"]



# ============================================================= #


# The .insert method in Ruby
puts "\n\nThe .insert method in Ruby: "


credit_card_transactions = [19.99, 29.43, 3.87]


# Syntax: .insert(index, element to insert)
credit_card_transactions.insert(1, 49.99)
p credit_card_transactions # => [19.99, 49.99, 29.43, 3.87]

credit_card_transactions.insert(0, 1.23, 4.46, 7.89)
p credit_card_transactions # => [1.23, 4.46, 7.89, 19.99, 49.99, 29.43, 3.87]

p [1, 2, 3].insert(8, 1000) # => [1, 2, 3, nil, nil, nil, nil, nil, 1000]



# ============================================================= #


# The .pop method on arrays in Ruby
puts "\n\nThe .pop method on arrays in Ruby: "

bubble_tea_flavors = %w[
  Chocolate
  Kiwi
  Peach
  Plum
  Strawberry
  Taro
]

# * Syntax: array.pop(No. of elements to pop)

# Without providing an argument:
bubble_tea_flavors.pop # => "Taro"
p bubble_tea_flavors # => ["Chocolate", "Kiwi", "Peach", "Plum", "Strawberry"]
puts


# With an argument:
bubble_tea_flavors.pop(1) # => "Strawberry"
p bubble_tea_flavors # => ["Chocolate", "Kiwi", "Peach", "Plum"]

bubble_tea_flavors.pop(2) # => "Pum"
p bubble_tea_flavors # => ["Chocolate", "Kiwi"]



# ============================================================= #


# The .shift and .unshit methods on arrays in Ruby:
puts "\n\nThe .shift and .unshit methods on arrays in Ruby: "

# * The shift method removes and returns the first element of the array
# * Syntax: array.shift

# * The unshift method adds one or more elements to the beginning of the array and returns the new length
# * Syntax: array.unshift(element1, element2, ...)

units = %w[meter kilogram second ampere]

# Using the .shift method:
p units.shift # => "meter"
p units # => ["kilogram", "second", "ampere"]
puts

p units.shift(2) # => ["kilogram", "second"]
p units # => ["ampere"]
puts


# Using the .unshift method:
p units.unshift("yard") # => ["yard", "ampere"]
p units # => ["yard", "ampere"]
puts

p units.unshift("inches", "miles") # => ["inches", "miles", "yard", "ampere"]
p units # => ["inches", "miles", "yard", "ampere"]
