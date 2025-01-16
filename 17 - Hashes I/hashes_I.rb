=begin
#* 1. Intro to Hashes. 
#* 2. Populate Hash and Extract values from keys.
#* 3. Intro to Symbols.
#* 4. Symbols as Hash Keys.
#* 5. Ruby 3.1 Shorthand Syntax.
#* 6. Add a new key-value pair to Hash.
#* 7. Iterating over a Hash.
#* 8. Check for inclusion in a Hash.
#* 9. The "select" and "reject" method on a Hash.
#* 10. Convert Hash to Array and vice-versa.
#* 11. The "delete" method.
#* 12. The "merge" method. 
#* 13. Create Hash with default values (Hash.new(value)).
#* 14. Reference problems with Hash.new 
=end 


#* Lesson 1: Intro to Hashes. 

#* A hash is a data structure that stores key-value pairs
#* Each value in a hash is accessed by its unique key
#* Hashes are like dictionaries - they have a term (key) and a definition (value)
#* Keys must be unique, but values can be duplicated
#* Hashes are created with curly braces {}

#* A hash solves the problem of association (connecting two values together).
#* Example: Restaurant menu connects a food item to a price.
#* Example: A dictionary connects a word to a definition.

#* Rules of a Hash: 
#* Hash keys must be unique. 
#* Hash values are extracted by key, not by order.

#* The purpose of a Hash is to model a real-world idea of Association and Connection.

empty_hash = {}
puts empty_hash #* => {}
puts empty_hash.class #* => Hash     

empty_array = []
puts empty_array #* => []
puts empty_array.class #* => Array

puts empty_hash.length #* => 0
puts empty_hash.empty? #* => true




#* Lesson 2: Populate Hash and extract values from keys.

#* Hash key=>value assignment syntax. 
#* key => value.
#* "=>" is called "Hash Rocket Symbol". Simplifies the idea of pointing or associating.

nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000
}

p nfl_roster_salaries # => {"Patrick Mahomes"=>50000000}
p nfl_roster_salaries.length # => 1
p nfl_roster_salaries.object_id # => 60 


#* Adding new values to Hash manually
nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000,
  "Josh Allen" => 25_000_000,
  "Joe Burrow" => 12_000_000
}

p nfl_roster_salaries # => {"Patrick Mahomes"=>50000000, "Josh Allen"=>25000000, "Joe Burrow"=>12000000}
p nfl_roster_salaries.length # => 3      


nfl_roster = {
  "Kansas City Chiefs" => ["Patrick Mahomes", "Travis Kelce"],
  "Los Angeles Ram" => ["Matthew Stafford", "Aaron Donald", "Cooper Kupp"]
}

p nfl_roster["Los Angeles Ram"] # => ["Matthew Stafford", "Aaron Donald", "Cooper Kupp"]


#* Extracting values from Hash using Keys: 
nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000,
  "Josh Allen" => 25_000_000,
  "Joe Burrow" => 12_000_000,
  "Patrick Mahomes" => 100_000_000
}

# A value is referenced not by position, not by idea of order just 
# like an array but by a unique key or identifier.
p nfl_roster_salaries["Patrick Mahomes"] # => 50_000_000, *If commented the 100_000_000*

#* Let's try to add a duplicate key: 
p nfl_roster_salaries["Patrick Mahomes"] # => 100_000_000, *A warning is issued*

p nfl_roster_salaries["Joe Burrow"] # => 12_000_000


#* Extracting an element that does not exist in our Hash: 
p nfl_roster_salaries["Tom Brady"] # => nil

#* Extracting with a type of our key: 
p nfl_roster_salaries["josh Allen"] # => nil


#* Using fetch method in Hash: 
#* The difference when using a fetch method is that it raises an Exception.

p nfl_roster_salaries.fetch("Josh Allen") # => 25_000_000
#p nfl_roster_salaries.fetch("Josh Nonsense") # => 'key not found', (KeyError)

#* The advantage of using a fetch method is you can provide a second argument
#* in case the key does not exist giving you a fallback or default value.
p nfl_roster_salaries.fetch("Josh Allen", 0) # => 25_000_000
p nfl_roster_salaries.fetch("Tom Brady", 0) # => 0




#* Lesson 3: Intro to Symbols.

#* A symbol is a lightweight, immutable ruby object that is used as an identifier.
#* It is sometimes called a lightweight string. It is a string without a baggage. 
#* A symbol is immutable therefore you cannot apply mutation to it therefore safe 
#* from any kind of modification. Compared when using a string where all kinds of 
#* functionalities are available. If you have a lot of strings, there can be called 
#* a overhead or unnecessary used of memory space. Compared to when just using a symbol 
#* as a substitute for string if only we do not have any intention of applying mutation to it.

#* A Hash keys is a perfect scenario to use symbols because they are unique meaning 
#* they do not need mutation or modification.

puts :hello # => A lightweight string called "hello"
puts "hello" # => "hello"

puts :hello.class # => Symbol
puts "hello".class # => String


#* Using a method called "methods". 
#* It allows us to see a lists of methods available 
#* to a certain object that we can use.
p "hello".methods # => *Displays all list of methods on a string object*
p "hello".methods.length # => 181 available methods for a string object. Thats a lot. 


#* A lightweight version of a string. Useful when we are just using a name.
p :hello.methods # => *Provides us with an array of methods available to symbols.*
p :hello.methods.length # => *81 methods available.*    

a = "hello"
b = "hello"
c = :hello
d = :hello
e = :goodbye

puts a.object_id # => 60
puts b.object_id # => 80

#* Ruby has just created the same memory location for both of this object.
puts c.object_id # => 1175068
puts d.object_id # => 1175068

puts e.object_id # => 1175388




#* Lesson 4: Symbols as Hash Keys.

#* This is just another intuitive and conventional way of writing Hash because
#* it eliminates the need to type hash rockets and far more convenient to read. 
#* Similar to data structures like dictionary in Python or JSON. 

person = {
  name: "Mark Glenn M. Gabuya",
  age: 25,
  isHandsome: true    
}

puts person[:name]    
puts person[:age]
puts person[:isHandsome]




#* Lesson 5: Ruby 3.1 Shorthand Syntax.

#* Another convention when defining key-value pairs in Hash. 
#* When you have a name in your program, such as a variable name.
#* that also matches the key that you want to add to a hash. When you
#* have that scenario, you can utilize this shortcut. 

red = 230
green = 0
blue = 50

#* The values in the hash referenced the variables above: 
color_hash = {
  red: red, 
  green: green, 
  blue: blue
}
p color_hash # => {:red=>230, :green=>0, :blue=>50}

#* Alternative Syntax of Ruby 3.1 
#* Spares us the hassle of writing the name over and over again.
#* Make sure that the variables exist in your program. 
red = 230
green = 0
blue = 50

color_hash = {red:, green:, blue:}
p color_hash # => {:red=>230, :green=>0, :blue=>50}




#* Lesson 6: Add a new key-value pair to Hash.

#* How to add a new key-value pair to an existing Hash. 
#* It is similar to adding a value at a given index 
#* position within an array.

menu =  {
  burger: 3.99,
  taco: 1.99,
  chips: 1.99
} 

p menu # => {:burger=>3.99, :taco=>1.99, :chips=>1.99}
p menu.length # => 3


#* Add a new value: 
menu[:filet_mignon] = 29.99
p menu # => {:burger=>3.99, :taco=>1.99, :chips=>1.99, :filet_mignon=>29.99}
p menu.length # => 4 


#* Overriding an existing value: 
menu[:taco] = 2.99 
p menu # => {:burger=>3.99, :taco=>2.99, :chips=>1.99, :filet_mignon=>29.99}


#* Using the store method in storing a new key-value pair:  
menu.store(:salmon, 49.99)
p menu # => {:burger=>3.99, :taco=>2.99, :chips=>1.99, :filet_mignon=>29.99, :salmon=>49.99}
p menu.length # => 5



#* Lesson 7: Iterating over a Hash.

#* Iteration is the process of looping over the pieces
#* or components of an object. 

#* Methods: 
#* each          - Iterate over each key-value pair.
#* each_key      - Iterate over each key. 
#* each_value    - Iterate over each value.
#* keys          - Return array of hash's keys.
#* values =      - Return array of hash's values. 

salaries = {
  director: 100_000,
  producer: 200_000,
  ceo: 300_000
}

salaries.each { |position, salary| puts "The #{position} earns #{salary}." }
puts   

#* We must remember that even though we see that Hash is taking things in order,
#* always assume that it is not because Hash is not created to model a data structure 
#* that is in order or have a definite location, rather it is just created for associating
#* two things. 
#* Always assume that we are iterating elements that do not have ordered location. 

#* Iterating using each_key method: 
salaries.each_key { |position| puts "The next position is #{position}." } # => *Returns every key*
puts 

#* Iterating using each_value method: 
salaries.each_value { |salary| puts "The next employee earns #{salary}." } # => *Returns every value*
puts   

#* Returns an array of keys: 
p salaries.keys #* => [:director, :producer, :ceo]

#* Returns an array of values: 
p salaries.values #* => [100000, 200000, 300000]




#* Lesson 8: Check for inclusion in a Hash.

#* Checking for the inclusion of a key or a value in a Hash.
#* How to check whether a particular key or value is present within a Hash. 
#* The "inlude?" method checks among the hash's keys.
#* The "key?" and "has_key?" methods check among the hash's keys. 
#* the "value?"" and "has_value?" methods check among the hash's values.

cars = {
  toyota: "Camry",
  chevrolet: "Aveo",
  ford: "F150",
  kia: "Soul"
}

p cars.include?(:toyota) #* => true 
p cars.include?("toyota") #* => false, *A symbol and a string are fundamentally different objects.*
p cars.include?(:Toyota) #* => false 
p cars.include?("Camry") #* => false, *the method only checks for keys and not for values.*
puts 

#* Let's search for keys: 
p cars.key?(:ford) #* => true
p cars.has_key?(:ford) #* => true  
puts 
#* Pro-tip: When trying to locate a specific Hash element, always opt for keys 
#* rather than the values because they are tend to be shorter. It is also a community standard.

#* Let's search for values: 
p cars.value?("Soul") #* => true
p cars.has_value?("F350") #* => false
p cars.has_value?("Mustang") #* => false
p cars.has_value?("Aveo") #* => true




#* Lesson 9: The "select" and "reject" method on a Hash.

#* In this lesson, we'll learn how to filter a Hash by using the select and reject methods.

#* The "select" method builds a new Hash by keeping key-value pairs based on a condition.
#* The "reject" method builds a new Hash by discarding key-value pairs based on a condition.

#* We are familiar with these methods already when we apply them on arrays.
#* The main difference with these filter methods is we are allowed to access both the keys and values.
#* Select is to keep while Reject is to discard, omit, or remove.

recipe = {
  Sugar: 3,
  Flour: 10,
  Salt: 1, 
  Pepper: 8
}

p recipe.select { |ingredient, teaspoons| teaspoons >= 5 } #* => {:Flour=>10, :Pepper=>8}
p recipe.select { |ingredient, teaspoons| ingredient.length == 5 } #* => {:Sugar=>3, :Flour=>10}
puts    

p recipe.reject { |ingredient, teaspoons| teaspoons.even? } #* => {:Sugar=>3, :Salt=>1}
#* A symbol does not have a include? method, one of the helper methods for strings, therefore you must convert it before you can use.
p recipe.reject { |ingredient, teaspoons| ingredient.to_s.include?("s") } # => {:Sugar=>3, :Flour=>10, :Salt=>1, :Pepper=>8}
puts  




#* Lesson 10:. Convert Hash to Array and vice-versa.

#* In this lesson, we'll learn how to convert a Hash to an Array and vice-versa.

#* Two Complementary Methods:
#* "to_a" method - convert hash to array.
#* "to_h" method - convert array to hash.

spice_girls = {
  scary: "Melanie Brown",
  sporty: "Melanie Chisholm",
  baby: "Emma Bunton",
  ginger: "Geri Halliwell",
  posh: "Victoria Beckham"
}

#* Converting a Hash into an Array. 
#* Nesting arrays within an Array.
#* We need to explicitly declare associations when we try to convert an Array back to Hash.
p spice_girls.to_a #* => [[:scary, "Melanie Brown"], [:sporty, "Melanie Chisholm"], [:baby, "Emma Bunton"], [:ginger, "Geri Halliwell"], [:posh, "Victoria Beckham"]]


#* Converting an Array into a Hash. 
power_rangers = [
  [:red, "Jason"],
  [:black, "Zack"],
  [:pink, "Kimberly"]
]

p power_rangers.to_h #* => {:red=>"Jason", :black=>"Zack", :pink=>"Kimberly"}




#* Lesson 11:. The "delete" method.

#* Learning how to use delete method on a Hash. 
#* The delete method removes a key-value pair by its key, and it actually
#* returns the value as its return value if you want to keep it.

#* The "delete" method - removes a key-value pair by its key.

superheroes = {
  spiderman: "Peter Parker",
  superman: "Clark Kent",
  batman: "Bruce Wayne"
}

p superheroes #* => {:spiderman=>"Peter Parker", :superman=>"Clark Kent", :batman=>"Bruce Wayne"}


#* Using delete method: 
superheroes.delete(:spiderman) 
p superheroes #* => {:superman=>"Clark Kent", :batman=>"Bruce Wayne"}


#* The "delete" method saves the deleted key-value pair somewhere in case we want to use it later: 
#* We can assigned it to a variable for easy access. 
superheroes = {
  spiderman: "Peter Parker",
  superman: "Clark Kent",
  batman: "Bruce Wayne"
}

retired = superheroes.delete(:spiderman)
p retired #* => "Peter Parker"




#* Lesson 12:. The "merge" method. 

#* In this lesson, we'll learn how to use merge method on Hash.
#* This methods allows us to combine or merge two hashes together into a new Hash.

#* The "merge" method - combines two hashes together.

market = {
  garlic: "3 cloves",
  milk: "10 gallons",
}

kitchen = {
  bread: "2 slices",
  milk: "100 gallons"
}

p market.merge(kitchen) #* => {:garlic=>"3 cloves", :milk=>"100 gallons", :bread=>"2 slices"}
p kitchen.merge(market) #* => {:bread=>"2 slices", :milk=>"10 gallons", :garlic=>"3 cloves"}

#* In case there is a duplicate of, the one who will be prioritize is the one that is provided as an argument.
#* In the example above, we see that "100 gallons" prevailed over the "10 gallons". 
#* The return value of a merge method is a brand new Hash. Therefore the original Hashes we used still retains 
#* the value. 

p market #* => {:garlic=>"3 cloves", :milk=>"10 gallons"}
p kitchen #* => {:bread=>"2 slices", :milk=>"100 gallons"}


#* If you want to permanently mutate a Hash, we use the bang method equivalent: 
p market.merge!(kitchen) # => {:garlic=>"3 cloves", :milk=>"100 gallons", :bread=>"2 slices"}

p market #* => {:garlic=>"3 cloves", :milk=>"100 gallons", :bread=>"2 slices"}




#* Lesson 13:. Create Hash with default values (Hash.new(value)).

#* In this lesson, we'll learn another way on how to create Hash in Ruby.
#* It offers a significant advantage where we can customize the value that the Hash blueprint will provide
#* when we try to reference a key that does not exist. 

#* If the Hash was created through usual means, it will return nil object when we try to access a non-existent key.

numbers = {}
p numbers[:pi] # => nil 

#* We pass a zero so the default value of default key-value pairs will be zero.
numbers = Hash.new(0)
numbers[:pi] = 3.14
numbers[:pokemon] = 150
p numbers[:pi] # => 3.14
p numbers[:pokemon] # => 150

p numbers[:planets] # => 0
p numbers[:colors] # => 0


#* When we pass "Complete Nonsense", it also become the default values.
numbers = Hash.new("Complete Nonsense")
numbers[:pi] = 3.14
numbers[:pokemon] = 150
p numbers[:pi] # => 3.14
p numbers[:pokemon] # => 150

p numbers[:planets] # => "Complete Nonsense"
p numbers[:colors] # => "Complete Nonsense"




#* Lesson 14:. Reference problems with Hash.new 

#* In this lesson, we will learn how to avoid certain problems that occurs with Hash.new() syntax
#* through certain solutions. 

team_members = Hash.new([])

p team_members["Buccaneers"] # => []
p team_members # => {} 


team_members["Buccaneers"] << "Tom Brady"
p team_members["Buccaneers"] # => ["Tom Brady"]
p team_members # => {} 


team_members["Buccaneers"] << "Mike Evans"
p team_members["Buccaneers"] # => ["Tom Brady", "Mike Evans"]
p team_members # => {} 

p team_members["Patriots"] # => ["Tom Brady", "Mike Evans"]



#* A solution: 

team_members = Hash.new do |hash, key|
  my_array = []
  hash[key] = my_array
  my_array
end

p team_members["Buccaneers"] # => []
p team_members # => {"Buccaneers"=>[]}


team_members["Buccaneers"] << "Tom Brady"
p team_members["Buccaneers"] # => ["Tom Brady"]
p team_members # => {"Buccaneers"=>["Tom Brady"]}


team_members["Buccaneers"] << "Mike Evans"
p team_members["Buccaneers"] # => ["Tom Brady", "Mike Evans"]
p team_members # => {} 


p team_members["Patriots"] # => []
p team_members # => {"Buccaneers"=>["Tom Brady", "Mike Evans"], "Patriots"=>[]}



#* Simplifying the code: 

team_members = Hash.new do |hash, key|
  hash[key] = []
end

p team_members["Buccaneers"] # => []
p team_members # => {"Buccaneers"=>[]}


team_members["Buccaneers"] << "Tom Brady"
p team_members["Buccaneers"] # => ["Tom Brady"]
p team_members # => {"Buccaneers"=>["Tom Brady"]}


team_members["Buccaneers"] << "Mike Evans"
p team_members["Buccaneers"] # => ["Tom Brady", "Mike Evans"]
p team_members # => {"Buccaneers"=>["Tom Brady", "Mike Evans"]}


p team_members["Patriots"] # => []
p team_members # => {"Buccaneers"=>["Tom Brady", "Mike Evans"], "Patriots"=>[]}