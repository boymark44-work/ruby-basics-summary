# Calculate the total meal cost with the default tip percentage of 20% or 0.20
def calculate_meal_cost(amount, tip = 0.20)
  "$#{amount + (amount * tip)}"
end

puts calculate_meal_cost(20, 0.05) # => 21.0
puts calculate_meal_cost(20) # => 24.0
puts calculate_meal_cost(100, 0.12) # => 112.0
puts calculate_meal_cost(100) # => 120.0
puts


def string_adder(a = "", b = "")
  "#{a} #{b}"
end

p string_adder("Hello", "World") # =>
p string_adder("Emilio", "Esteves") # =>
p string_adder # =>
p string_adder("Tiger") # =>
