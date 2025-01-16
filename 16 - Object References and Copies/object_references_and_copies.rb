=begin

#* Table of Contents: 
#* 1. Object References. 
#* 2. The "dup" and "clone" methods. 
#* 3. The "freeze" method. 
#* 4. Passing Objects to Mutating Methods. 

=end 


#* Lesson 1: Object References. 
a = [1, 2, 3]
b = a   
p b # => [1, 2, 3], referencing the same array 
p a # => [1, 2, 3], they are not duplicates 
p a.object_id # => 60, *A unique numeric identifier for that object in our program.*
p b.object_id # => 60, *It has the same ID*

#* Different array that looks the same. 
p [1, 2, 3].object_id # => 80
p [1, 2, 3].object_id # => 100
p [1, 2, 3].object_id # => 120
p [1, 2, 3].object_id # => 140

#* Main Point is that two objects may look the same but 
#* in reality are totally different.
#* It is important to uniquely identify variables in your program 
#* to avoid confusion.




#* Lesson 2: The "dup" and "clone" methods. 
a = [1, 2, 3]
b = a 

#* The dup and clone method 
#* The creation of identical, copy or duplicate of a certain object. 

a = [1, 2, 3]
b = a.dup
c = a.clone  

#* They might look the same but that are three different arrays.
p a.object_id # => 60
p b.object_id # => 80
p c.object_id # => 100 

a.push(4)
p a # =>  
p b # =>    
p c # => 

d = "Shop Rite"
e = d # => Creating another name for the same object. Creating another reference.
d.upcase! 
p d # => "SHOP RITE"
p e # => "SHOP RITE"

#* Creating a clone: 
d = "Shop Rite"
e = d.dup 
d.upcase!
p d  
p e 




#* Lesson 3: The "freeze" method. 

#* The freeze method will help us explain the difference between dup and clone methods.
#* By freezing an object, we are making it immutable.
#* A safety mechanism that prevents you from mutating an object. 

#* Freeze - To make it immutable.
name = "Boris".freeze  
hobbies = ["Coding", "Eating Sushi"].freeze 

# name << " the Genius"
# hobbies << "Winning"
#name.upcase! 

#* If we apply dup method on a frozen object, we can still get a copy but its not frozen.*\
#* Whereas if we apply clone method, we can still get a copy but that copy is also frozen.*
#* In short, with dup method, we can have a copy that is not frozen.
#* But with clone, we can have a copy but both of them are frozen.


#* Application of dup method: 
name = "Boris".freeze  
name_dup = name.dup  
name_dup << " the Genius."
p name_dup # => "Boris the Genius."

hobbies = ["Coding", "Eating Sushi"].freeze   
hobbies_dup = hobbies.dup 
hobbies_dup << "Winning!"
p hobbies_dup # => ["Coding", "Eating Sushi", "Winning!"]


#* Application of clone method: 
name = "Boris".freeze  
name_clone = name.clone 
name_clone << " the Genius."
p name_clone # => 

hobbies = ["Coding", "Eating Sushi"].freeze  
hobbies_clone = hobbies.clone  
hobbies_clone << "Winning!"
p hobbies_clone # => 




#* Lesson 4: Passing Objects to Mutating Methods.  

#* Passing objects as arguments to methods. 
#* When passing arguments, we are not passing duplicate or a copy, 
#* we are passing an original object. 
#* It technically has the possibility of mutating and changing that 
#* underlying object. So we need to be careful.
#* This could prevent bugs and errors in the future.

def append_5(elements)
    elements << 5
end
  
  
values = [1, 2, 3, 4]
append_5(values)
p values # => [1, 2, 3, 4, 5]

#* We need to be careful as we might have mutate an object that 
#* is living maybe 100 lines away 
#* and we might change its underlying data structure. 
#* Creating a side-effect or change which could results to bugs.
  
def uppercase(text)
    text.upcase!
end

name = "Boris"
uppercase(name) 
p name # => "BORIS"


def append_5(elements)
    elements = [] 
end

values = [1, 2, 3, 4]
append_5(values)
p values # => [1, 2, 3, 4]
