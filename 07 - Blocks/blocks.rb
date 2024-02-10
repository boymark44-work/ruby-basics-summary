# Intro to Blocks
puts "\nIntro to Blocks in Ruby: "

=begin
  A block is a procedure or collection of code that is enclose in either curly braces{}
  or "do-end". They can be passed to methods as arguments and often used in
  encapsulating and organizing sections of code.
=end

# A single-line block
5.times { puts "Ruby is awesome!" }
puts

# A multi-line block
3.times do
  puts "Ruby is awesome again!"
end
puts

# A block within a variable
blocks = 4.times do
  puts "Ruby is awesome!"
  puts "I'm having fun learning it."
end

puts blocks # => [(Print 4 times the strings inside the multi-line block along with the corresponding number of iteration which is 4)]



# ============================================================= #


# Block variables in Ruby
puts "\n\nBlock variables in Ruby: "

# |count| - is the block variable that we can use to track the number of iterations
3.times { |count| puts count } # =>
puts

3.times do |running_count|
  puts "The current count is #{running_count}"
  puts "Mark is awesome!"
end



# ============================================================= #


# The upto and downto methods in Ruby
puts "\n\nThe upto and downto methods in Ruby: "

# Go from 5 upto 10
5.upto(10) { |current_count| puts "The loop is now on: #{current_count}"  }
puts

# Count from 6 downto 1
6.downto(1) { |current_count| puts "Countdown: #{current_count}" }
puts

99.downto(1) do |number|
  puts "#{number} bottles of beer on the wall, #{number} bottles of beer."
  puts "Take one down, pass it around."
  puts "#{number - 1} bottles of beer on the wall."
end



# ============================================================= #


# The step method in Ruby
puts "\n\nThe step method in Ruby: "

# Performing the idea of steps or intervals in Ruby
1.step(100, 5) { |number| puts "#{number}" }
puts

1.step(50, 7) do |number|
  puts "Alright, let's go up by 7!"
  puts "I am now on #{number}"
end
