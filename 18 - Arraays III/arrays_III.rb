=begin

#* Table of Contents: 
#* 1. The reverse method. 
#* 2. The sort method.
#* 3. The uniq method.
#* 4. The compact method.
#* 5. The inject or reduce method.
#* 6. The flatten method.
#* 7. The sample method.
#* 8. Multiply an array using the multiplication syntax "*".
#* 9. Merge arrays while excluding duplicates.
#* 10. Remove Array elements that exist from another Array.

=end 

#* Lesson: 1. The reverse method. 

#* We will learn how to use the reverse method on an array.
#* reverse - returns a new array with elements in reverse order.
#* The reverse method does not mutate the original object but there is a bang! method equivalent for it.

p [1, 2, 3].reverse # => [3, 2, 1]
p [true, true, false, false].reverse # => [false, false, true, true]

#* Applying a bang! method to permanently alter the object:   
queue = [4, 8, 15, 16, 23, 42]
queue.reverse!
p queue # => [42, 23, 16, 15, 8, 4]




#* Lesson: 2. The sort method.

#* In this lesson, we'll learn how to use the sort method on an array.
#* This methods sorts the array in ascending/alphabetical order. 

#* Sort in ascending order: 
p [2, 3, 1].sort # => [1, 2, 3]

#* Method chaining to sort it in descending order: 
p [2, 3, 1].sort.reverse # => [3, 2, 1]

#* Sorting alphabetically: 
p ["Hello", "Blah", "Zebra"].sort # => ["Blah", "Hello", "Zebra"] 

#* Sorting in reverse alphabetical: 
p ["Hello", "Blah", "Zebra"].sort.reverse # => ["Zebra", "Hello", "Blah"]

#* Ruby prioritize the Capital over lowercase letters: A - Z comes before a - z.
p ["Hello", "Blah", "Zebra", "artist"].sort # => ["Blah", "Hello", "Zebra", "artist"]
p ["Hello", "Blah", "Zebra", "artist", "zebra"].sort # => ["Blah", "Hello", "Zebra", "artist", "zebra"]




#* Lesson: 3. The uniq method.

#* In this lesson, we'll learn how to use the uniq method.
#* As the name suggest, this method will return a new array 
#* consisting only of unique values. 
#* This method will also remove all duplicates in your starter array.

numbers = [1, 8, 3, 2, 3, 8, 1, 8, 9]
p numbers.uniq # => [1, 8, 3, 2, 9]
p numbers # => [1, 8, 3, 2, 3, 8, 1, 8, 9]

#* To permanently alter the object, use the bang! method.
numbers.uniq!
p numbers # => [1, 8, 3, 2, 9]




#* Lesson: 4. The compact method.

#* In this lesson, we'll learn how to use the compact method within an array.
#* This method removes all nil values from an array. Others will be kept.
#* Remove all occurrences of nil throughout an array.

p [1, 2, 3.14, false, nil].compact # => [1, 2, 3.14, false]
p [1, nil, nil, 2, 3.14, false, nil].compact # => [1, 2, 3.14, false]
p [1, 2, 3.14, nil, nil, false, nil].compact # => [1, 2, 3.14, false]

p [1, 2, 3].compact # => [1, 2, 3]
p [].compact # => []

#* Permanently alter the object: 
sports = ["Football", "Soccer", nil, "Baseball", nil]
sports.compact!
p sports # => ["Football", "Soccer", "Baseball"]




#* Lesson: 5. The inject or reduce method.

#* The inject/reduce methods - derive a new value by combining all array elements.
#* This two methods are identical.

#* First block variable - The "aggregate" or "accumulator" value, the value being calculated.
#* Second block variable - The currency array element.
#* Third block variable - What to send to next loop as the "aggregate" value. 

#* There is a clear distinction between the map and the inject/reduce method.
#* In map, we are iterating over an array and performing consistent operation on every element.
#* The goal is to return back a brand new array of the same length will all of those 
#* operations performed on all of those elements but with reduce or inject, the final object
#* that we choose to create is up to us, we can build up a hash or we could build up a number such as float.

p [10, 20, 30].reduce(0) { |sum, number| sum += number } #* => 60
p [10, 20, 30].inject(0) { |sum, number| sum += number } #* => 60

# element = 10, sum = 0, number = 10, sum + number = 10 *Represents what to send to the next loop* 
# element = 20, sum = 10, number = 20, sum + number = 30 
# element = 30, sum = 30, number = 30, sum + number = 60 

#* The basic premise is that what we are sending to the next loop or iterator.
#* The accumulator as being sent to the next iterator. The aggregate value that was built over time.
#* The idea is we are reducing the array down to one value by iterating over the array elements.


#* Another example: 
color_counts = ["Red", "Blue", "Red"].reduce({}) do |counts, color|
  if counts[color].nil?
    counts[color] = 1
  else 
    counts[color] += 1
  end

  counts
end 

p color_counts # => {"Red"=>2, "Blue"=>1}

#* Another example: 
color_counts = ["Red", "Blue", "Red"].inject({}) do |counts, color|
  if counts[color].nil?
    counts[color] = 1
  else 
    counts[color] += 1
  end

  counts
end 

p color_counts # => {"Red"=>2, "Blue"=>1}




#* Lesson: 6. The flatten method.

#* In this lesson, we'll learn how to use the flatten method within an array.
#* This method creates a one-dimensional array, which basically means to remove 
#* all nested arrays within the original array. It extracts all elements, no matter how
#* nested they are up into one single dimensional array. 
#* All elements are going to exist on the same level. None are going to be nested.

#* The "flatten" method - create a one-dimensional array (no nested arrays)
#* One-dimensional means no layer or nested data structures underneath.

#* Ruby is smart enough, it is capable of flatten it despite many layers.


party_attendees = [
  "Joe", 
  ["Bob", "Keith", "Cam"],
  "Holly",
  ["Rick", "Molly"]
]

p party_attendees.flatten # => ["Joe", "Bob", "Keith", "Cam", "Holly", "Rick", "Molly"]




#* Lesson: 7. The sample method.

#* In this lesson, we'll learn how to use the sample method in an array. 
#* This method allows us to extract one or more random elements from an array.

flavors = ["Chocolate", "Vanilla", "Strawberry", "Cookies and Cream"]

p flavors.sample #* => *Getting a random ice cream flavor*
puts   


#* If we put an argument, it will return us an array that contains the number of elements we wanted to extract.
#* The argument represents the number of elements to pull out.
#* Remember, they are just random therefore they are subject to change.
p flavors.sample(1) #* => ["Vanilla"]
p flavors.sample(2) #* => ["Strawberry", "Chocolate"]
p flavors.sample(3) #* => ["Vanilla", "Cookies and Cream", "Strawberry"]
p flavors.sample(4) #* => ["Vanilla", "Chocolate", "Strawberry", "Cookies and Cream"]


#* If we want to exceed the number of elements, we will just be getting the same number of elements.
p flavors.sample(10) #* => ["Cookies and Cream", "Chocolate", "Vanilla", "Strawberry"]




#* Lesson: 8. Multiply an array using the multiplication syntax "*".

#* Multiplying an array using the asterisk "*" or multiplication operator.


p 4 * 3 #* => 12

p "Ruby" * 3 #* => "RubyRubyRuby

p [1, 2, 3] * 5  #* => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]

p ["Mark", "Glenn", "Gabuya"] * 2 #* => ["Mark", "Glenn", "Gabuya", "Mark", "Glenn", "Gabuya"]




#* Lesson: 9. Merge arrays while excluding duplicates.

#* In this lesson, we'll learn how to create a union of multiple arrays.
#* This method allows us to merge multiple arrays and excluding any duplicates.

#* | (vertical bar) or Union Symbol  
p [1, 2, 3, 3, 4] | [3, 4, 5, 6] #* => [1, 2, 3, 4, 5, 6]

#* The vertical bar is actually a method we can invoke to merge multiple arrays.
p [1, 2, 3, 3, 4].|([3, 4, 5, 6]) #* => [1, 2, 3, 4, 5, 6]
p [1, 2, 3, 3, 4].|([3, 4, 5, 6]).|([4, 5, 6, 7]) #* => [1, 2, 3, 4, 5, 6, 7]


p [1, 2, 3] | [3, 4, 5] | [4, 5, 6] #* => [1, 2, 3, 4, 5, 6]




#* Lesson: 10. Remove Array elements that exist from another Array.

#* In this lesson, we'll learn how to use the subtraction operator to remove array elements.
#* This method allows us to remove certain elements from the original array with the second array as basis for elimination.
#* Any elements that can be found on second array will be the basis for removal of elements from the starter array.


#* Remove [2, 3] from the first array:   
p [1, 1, 2, 2, 3, 3, 4, 4, 5] - [2, 3] # => [1, 1, 4, 4, 5]


#* This is also invocable as a method: 
p [1, 1, 2, 2, 3, 3, 4, 4, 5].-([2, 3]) # => [1, 1, 4, 4, 5]




#* Lesson: 11. Array intersection with ampersand "&" symbol.

#* In this lesson, we'll learn how to create an intersection between multiple arrays.
#* What this method does is combines multiple arrays but it keeps only array elements that 
#* are found in both original arrays. Keeping the elements that are shared between both sides. 
#* Something that is similar to a Venn Diagram.

#* The ampersand "&" symbol - combine multiple arrays, keep array elements that are found in both. 


#* We keep only the elements that are found in both sides.
p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] #* => [1, 4, 5]

p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] & [1, 4, 8, 4, 9, 10]#* => [1, 4]


#* Can be invoke as a method: 
p [1, 1, 2, 3, 4, 5].&([1, 4, 5, 8, 9]) #* => [1, 4, 5]



