=begin   
* Table of Contents: 
*     1. Review of Blocks. 
*     2. The "yield" keyword.
*     3. Block return values.
*     4. The block_given? method.
*     5. Block Parameters.
*     6. A custom each method. 
*     7. Procs. 
*     8. More Procs examples.
*     9. Methods with Proc: Parameters.
*     10. Intro to Lambdas.
*     11. Differences between Lambdas and Procs.
=end



#* 1. Review of Blocks. 

=begin
* Blocks: 
* - A block is a chunk of code to execute.
* - An argument is an object that we pass a method, while a block is a procedure.
* - A block cannot exist without a method. 
* - A block is a temporary construct.

* Blocks vs. Methods
* - Methods can be invoked over and over.
* - A block is used only once, then disappears.
* - Methods capture the repeatable steps of a procedure.
* - A block captures the custom step of a procedure.
=end

#* We are also then introduced to two complementary objects which are procs and lambdas.
#* These objects allows us to essentially create reusable blocks, blocks that 
#* we can reuse across multiple method calls.

#* Blocks are not objects in ruby, it is just a construct.
#* Blocks are referred to as constructs because they are not first-class 
#* citizens in Ruby. This means that blocks cannot be assigned to variables, 
#* passed as arguments to functions, or returned as values from functions 
#* without being converted into objects first.

[1, 2, 3].each { |value| p value }

p [1, 2, 3].map { |value| value ** 2 } # => 



#* 2. The "yield" keyword.

#* In this lesson, we'll learn how we can define a method 
#* that can accepts its own block,
#* just like built-in ruby methods like each.


#* yield - directly inside the method 
#* We are ceding control. 

def pass_control
    puts "I'm at the start of the pass_control method."
    yield # => *At this point, yield tells Ruby to transfer control to the attached block.*
end
  
pass_control { puts "Now I'm inside the block." }  
puts 

pass_control { puts "I am very handsome." }
puts   
  
pass_control do     
    puts "Hello, line number 1"
    puts "Goodbye, line number 2"
end
  
  
#* We can actually use "yield" several times. As many times as we want.
def pass_control
    puts "I'm at the start of the pass_control method."
    yield 
    puts "Now, I'm back inside the pass_control method."
    yield 
end

pass_control { puts "Now I'm inside the block." }  
puts 

pass_control { puts "I am very handsome." }
puts   

pass_control do     
  puts "Hello, line number 1"
  puts "Goodbye, line number 2"
end


#* Some additional examples to understand yield: 

#* Custom Iterators: One common use of yield is to create custom 
#* iterators. For example, you might want to define your own version 
#* of an iterator like each.
def custom_each(array)
    for element in array
        yield element
    end
end

custom_each([1, 2, 3]) { |num| puts num }
  
  
#* Callbacks: You can use yield to create methods that accept blocks 
#* as callbacks. This can be useful for defining actions that should 
#* be taken at certain points in the execution of your code.
def perform_task 
    puts "Starting task...."
    yield if block_given?
    puts "Task completed!"
end

perform_task { puts "Performing the task..." }
  
  
#* Checking for a Block: You can use the block_given? method to check 
#* if a block was provided before calling yield. This helps to avoid 
#* errors if no block is passed.
def greet
    puts "Hello!"
    yield if block_given?
    puts "Goodbye!"
end
  
greet #* => *No block provided as an example*

#* In summary, the yield keyword is a powerful feature in Ruby that allows
#* methods to execute blocks of code provided at the time of the method call. 
#* This enables greater flexibility and reusability of methods, making it 
#* a valuable tool for Ruby developers.



#* 3. Block return values.

#* When we attached a block to a method that has the yield keyword, 
#* the block will implicitly return its last evaluation back to the method itself.

#* We can capture some kind of value from the block and use it within
#* the body of our method. 


def who_am_i 
    puts "Hello there! Let me tell you about myself."
    adjective = yield 
    puts "I am very #{adjective}."
end
  
who_am_i { "handsome" }
who_am_i { "talented" }
puts    
  
who_am_i do
    "handsome"
    "wonderful" #* => *Was prioritize due to implicit returning.*
end
  
  
#* Its actually important that we do not use "return" keyword in our block.
#* Because it will immediately terminate a method and produces a return value. 
#* Thus the line succeeding the yield keyword will never going to run. 
def who_am_i 
    puts "Hello there! Let me tell you about myself."
    adjective = yield 
    puts "I am very #{adjective}."
end
  
who_am_i { return "charming" }
  
#* In summary, we are reminded not to use "return" keyword in our 
#* blocks as it will immediately terminate the whole operation.
  


#* 4. The block_given? method.

#* We'll learn the block_given? predicate method.
#* A predicate method that determines whether a 
#* block was provided or not to method invocation.

#* Allows us to write methods that can accept the block
#* but don't have to.

def pass_control_on_condition
    puts "Inside the method"
    yield 
    puts "Back inside the method"
end
  
pass_control_on_condition #* => *Returns an Exception(LocalJumpError)*
  
  
  
#* Use the block_given? method. 
def pass_control_on_condition
    puts "Inside the method"
    yield if block_given?
    puts "Back inside the method"
end
  
pass_control_on_condition { puts "Inside the Block" }
puts    
  
#* Much more flexible and dynamic approach. 
pass_control_on_condition #* => *We will not trigger an exception*
  
  
  
#* 5. Block Parameters.

#* We'll learn about block parameters and block arguments.
#* Allows us to utilize blocks but with custom logic into it.
#* Allowing us to be more flexible and dynamic with out approach. 

#* Utilizing block parameters.
def speak_the_truth
    yield("Boris")
end

speak_the_truth { |name| puts "#{name} is brilliant!" } 
speak_the_truth { |name| puts "#{name} is incredible!" } 

  
#* Allowing the method to accept its own parameters.
def speak_the_truth(name)
    yield(name)
end
  
speak_the_truth("Boris") { |name| puts "#{name} is brilliant!" }
speak_the_truth("Sarah") { |name| puts "#{name} is incredible!" }

  

#* The yield method can accept as many value as we want.
#* Those values are successive block variables.
def number_evaluation(num1, num2, num3)
    yield(num1, num2, num3) 
end
  
p number_evaluation(5, 10, 15) { |num1, num2, num3| num1 + num2 + num3  }
p number_evaluation(3, 4, 5) { |num1, num2, num3| num1 * num2 * num3  }
  
  

#* 6. A custom each method. 

#* We'll learn how to implement our custom each method.
#* Allows us to customize blocks and iteration over arrays. 
#* The reason why we are doing a custom approach to array iteration
#* is to give us an advantage of being able to build with blocks in 
#* combination with the methods you define.

[10, 20, 30].each { |number| puts "The square of #{number} is #{number * number}." }


#* Let's write our custom each method: 
def custom_each(elements)

  i = 0 

  while i < elements.length
    yield elements[i]
    i += 1
  end

end

custom_each([10, 20, 30]) { |number| puts "The square of #{number} is #{number * number}." }
puts    

custom_each(["Boris", "Arnold", "Melissa"]) do |name|
  puts "The length of #{name} is #{name.length}."
end



#* 7. Procs. 

#* We'll learn the differences between Blocks, Procs, and Lambdas in Ruby.
#* They are three different ways of representing chunks of code that can be 
#* passed around and executed at a later time in combination of a method.

#* Blocks are not objects therefore we can't save them for future use.

#* Proc - an object representation of a Block.
#* Short for "procedure". A sequence of code per se.
#* We can assign it to a variable and save it later. 
#* Proc is just a reusable or savable block.  


#* Use the Proc class, a blueprint for creating Proc objects.
to_cubes = Proc.new { |number| number ** 3 }
p to_cubes.call(3) #* => 27

to_cubes = Proc.new do |number|
  number ** 3
end
p to_cubes[3] #* => 27


#* We can also use the lowercase to define a proc: 
to_cubes = proc { |number| number ** 3 }
p to_cubes.(3) #* => 27

to_cubes = proc do |number|
  number ** 3
end
p to_cubes.(3) #* => 27


#* Implementation using Blocks: 
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

p a.map { |number| number ** 3 }
p b.map { |number| number ** 3 }
p c.map { |number| number ** 3 }


#* Implementation using a single Proc.
#* We use the ampersand symbol "&" to reference the Proc and 
#* implement the same operation consistently on array elements.
#* Procs offers a reduced syntax which means less room for errors 
#* compared to Blocks. 
to_cubes = Proc.new { |number| number ** 3 }

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

p a.map(&to_cubes)
p b.map(&to_cubes)
p c.map(&to_cubes)



#* 8. More Procs examples.

#* We'll learn more Proc examples.

#* Block is not reusable. 
#* What if the exchanged rate is updated? 
us_dollars = [10, 20, 30, 40, 50]
p us_dollars.map { |number| number * 0.97 } #* => *Current conversion rate.*


#* Solve this problem using Procs.

#* Current currency exchange: 
to_euros = Proc.new { |currency| currency * 0.97 }
to_rupees = Proc.new { |currency| currency * 86.55 }
to_pesos = Proc.new { |currency| currency * 58.53 }

us_dollars = [10, 20, 30, 40, 50]
more_us_dollars = [70, 80, 90]

p us_dollars.map(&to_euros) #* => [9.7, 19.4, 29.099999999999998, 38.8, 48.5]
p us_dollars.map(&to_rupees) #* => [865.5, 1731.0, 2596.5, 3462.0, 4327.5]
p us_dollars.map(&to_pesos) #* => [585.3, 1170.6, 1755.9, 2341.2, 2926.5]
puts   

p more_us_dollars.map(&to_euros) #* => [67.89999999999999, 77.6, 87.3] 
p more_us_dollars.map(&to_rupees) #* => [6058.5, 6924.0, 7789.5]
p more_us_dollars.map(&to_pesos) #* => [4097.1, 4682.4, 5267.7]


#* Another example of Proc: 
is_senior = Proc.new { |age| age > 55 }

ages = [10, 60, 83, 43, 25] 

p ages.select(&is_senior) #* => [60, 83] 
p ages.reject(&is_senior) #* => [10, 43, 25]



#* 9. Methods with Proc: Parameters.

#* We'll learn how we can define a method that accepts a proc parameter.

#* Implement a Proc: 
def talk_about(name, &my_proc)
    puts "Let me tell you about #{name}."
    my_proc.call(name)
end 
  
#* Implement a Block: 
def talk_about_2(name)
    puts "Let me tell you about #{name}."
    yield(name)
end
  
good_thing = Proc.new { |name| puts "#{name} is a jolly good fellow." }
bad_thing = Proc.new { |name| puts "#{name} is a dolt!" }
  
talk_about("Boris", &good_thing)
talk_about("Brock", &bad_thing)
puts   
  
  
#* Maybe there are instances that compels you to use a disposable block.
#* This kind of approach is doable. Ruby allows you to. 
#* Block is very appropriate for this kind of scenario. 
talk_about("Johnny") { |name| puts "#{name} is irrelevant." }
puts 
  

#* Ruby will make sure to convert a Block into a Proc behind the scenes 
#* to avoid any kinds of errors even though we did not specify that this method
#* will receive a Proc.
#* Ruby will convert a Block to a Proc or vice-versa. Because it wants to be flexible.
#* It wants to support two approaches. 
talk_about_2("Dan") { |name| puts "#{name} is someone special!" }
talk_about_2("Bob", &good_thing) 



#* 10. Intro to Lambdas.

#* we'll learn about lambdas.
#* Lambdas are nameless method and has some quite differences with blocks and procs.
#* Lambdas are almost identical to Procs.
#* Lambdas are objects and has a method that we can use in order to run Lambdas.
#* Both the Lambdas and Procs are derived from the Proc Blueprint. 

#* An example of a Proc: 
squares_proc = Proc.new { |number| number ** 2 }
p [1, 2, 3].map(&squares_proc) #* => [1, 4, 9]

#* An example of a Lambda: 
squares_lambda = lambda { |number| number ** 2 }
p [1, 2, 3].map(&squares_lambda) #* => [1, 4, 9]
p [4, 5, 6, 7, 8].map(&squares_lambda) #* => [16, 25, 36, 49, 64]

#* Alternative way to declare a Lambda: 
squares_lambda_alternative = ->(number) { number ** 2 }
p [1, 2, 3].map(&squares_lambda_alternative) #* => [1, 4, 9]



#* 11. Differences between Lambdas and Procs.

#* We'll learn the differences between Lambdas and Procs. 

=begin
* Lambdas vs Procs: 

* 1. A lambda cares about the number of arguments it receives.
*    A lambda will throw away an error if passed the wrong number
*   of arguments. A Proc will ignore extra arguments and assigned nil to 
*   missing arguments.

* 2. When a lambda returns, it passes control back to the calling method. 
*    But when a Proc returns, it triggers a return from the calling method
*    which is a similar behavior to a block. 
=end 


my_proc = Proc.new { |name, age| puts "Your name is #{name} and you are #{age} years old." }
my_lambda = lambda { |name, age| puts "Your name is #{name} and you are #{age} years old." }

def do_stuff(&code)
  #* Use the call method to call a Proc or Lambda implementation: 
  code.call("Boris", 25)
end

do_stuff(&my_proc) #* => Your name is Boris and you are 25 years old.
puts   
do_stuff(&my_lambda) #* => Your name is Boris and you are 25 years old.
puts 


#* Let's add another method to see the difference between a Proc and a Lambda.
#* The Proc is not strict if we provide insufficient number of arguments as the 
#* Proc will immediately creates its own block whereas the Lambda returns immediately 
#* an error if we provide wrong number of arguments. It will trigger an exception.
my_proc = Proc.new { |name, age| puts "Your name is #{name} and you are #{age} years old." }
my_lambda = lambda { |name, age| puts "Your name is #{name} and you are #{age} years old." }

def do_stuff(&code)
  code.call("Boris", 25)
end

def do_more_stuff(&code)
  code.call("Boris")
end

do_more_stuff(&my_proc)
do_more_stuff(&my_lambda)
puts   


#* Using "return" keyword within a Proc and Lambda. 
#* The Lambda passes the control back to the method while the Proc 
#* cedes. 
my_proc = Proc.new { return "PROC RETURN" }
my_lambda = lambda { return "LAMBDA RETURN" }

def execute(&logic)
  puts "Starting execution...."
  puts logic.call
  puts "Ending execution....."
end

execute(&my_lambda)
puts   

execute(&my_proc)
puts    

#* The key takeaway is that these constructs are different ways to capture
#* reusable logic that is different from a method. 