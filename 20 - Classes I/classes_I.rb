=begin
    Table of Contents: 
        1. Intro to Classes.
        2. Create a Class.
        3. The "new" method on Ruby's Native Objects.
        4. Instance variables and the "initialize" method.
        5. Instance methods.
        6. Override the to_s methods.
        7. The "self" keyword.
        8. Omitting the "self" keyword.
        9. Getter Methods (Read).
        10. Setter Methods (Write).
        11. The "attr_reader" and "attr_writer" methods.
        12. The "attr_accessor" methods.
        13. Add parameters to initialize methods.
=end

#* 1. Intro to Classes.

#* We'll learn about Classes.
#* Classes allows us to understand programming even more.
#* Allows us to model real-world things in order to solve real-world problems.
#* A class is a Blueprint/Template for creating objects.

#* The "class" method.
#* Return the class from which the object was made.
#* The schematic where the object is created from.

puts 5.class #* => Integer
puts 8.class #* => Integer
puts 5.class == 8.class #* => true


puts 3.14.class #* => float   
puts 99.99.class #* => float 
puts 3.14 == 99.99 #* => false 


puts 3.class == 3.14 #* => false 


#* Every object in Ruby has to come from a foundation, from a schematic,
#* or from a Blueprint. 
puts "Hello World".class #* => String  
puts [1, 2, 3, 4, 5].class #* => Array
puts ({}).class #* => Hash
puts true.class #* => TrueClass
puts false.class #* => FalseClass 
puts nil.class #* => NilClass 


puts (0..9).class #* => Range
puts (0...9).class #* => Range
puts Proc.new {}.class #* => Proc  



#* 2. Create a Class.

#* We'll define our custom class.
#* UpperCamelCase - Capitalize first letter of every word. 
#* The convention for creating classes.  

class Guitar
  
end

acoustic = Guitar.new
electric = Guitar.new
hybrid = Guitar.new 

puts acoustic #* => *Unique locations in memory.*
puts electric #* => *Unique locations in memory.*
puts hybrid #* => *Unique locations in memory.*

puts acoustic.class #* => Guitar 
puts electric.class #* => Guitar   
puts hybrid.class #* => Guitar   



#* 3. The "new" method on Ruby's Native Objects.

#* We'll learn the new method on Ruby's native objects.

p Hash.new(0) #* => {}
p String.new("Mark Glenn") #* => "Mark Glenn"
p Array.new #* => []
p Array.new(1) #* => [nil] 
p Array.new(5) #* => [nil, nil, nil, nil, nil]


p ({mark: 25, glenn: 26}).class

p ("Mark Glenn M. Gabuya").class

p ([1, 2, 3, 4, 5]).class



#* 4. Instance variables and the "initialize" method.

#* We'll introduced the instance variables and the initialize methods.

#* Instance variables are variables that belongs to an object.
#* They are "data" that belongs to the object.
#* They hold information on the object's current status.

#* Instance variables begin with an "@" symbol. Without the symbol, 
#* Ruby interprets a variable as a local variable.

#* Ruby calls a special, private "initialize" method when an object is
#* instantiated from a class. The initialize method offers a perfect place
#* to create instance variables and assign them starting values.

#* If we do not define an "initialize" method, the object is initialized
#* without a state (like in the previous lesson.)

#* The instance variable values do not have to stay constant. 
#* We can alter the object's state later.
#* The initialize method is a private method meaning it is exclusively
#* available for Ruby. 

class Guitar
    def initialize
      #puts "A new object is being created."
      
      #* The "@" symbol is very important. 
      #* It allows our instantiated objects to have a state.
      #* Your instance variable could be anything like an Integer, Float, String, Array, Hash, etc.  
      #* Remember that this is the initial state of our guitar or initial starting values. 
      #* Meaning this can be alter or modify in the future.
      #* When we say "private" in the context of programming, we are talking about the perspective
      #* of other objects meaning that other objects cannot access this particular values as they are 
      #* exclusive to a certain object already. In other words, "private to other objects".
      @type = "Acoustic" 
      @wood = "Alder"
      @strings = 6
      @colors = ["Black", "Gold"] 
    end
  
end
  
guitar1 = Guitar.new  
guitar2 = Guitar.new  

p guitar1
p guitar2



#* 5. Instance methods.

#* Encapsulation refers to a design paradigm where we restrict direct 
#* access to an object's data. Instead, we use methods to access and 
#* write that data, which hides away the complexity of the implementation
#* and reduces the chance of bugs. 

class Guitar
    def initialize
        @type = "Acoustic"
        @wood = "Adler"
        @strings = 6
    end

    #* We are free to expose any number of our instance variables and methods.
    def information
        "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
end
  
  
#* Instance methods are regular methods that belongs to the instance.
guitar = Guitar.new  
p guitar 
p guitar.information
  
  
  
#* 6. Override the to_s methods.

class Guitar
    def initialize
      @type = "Acoustic"
      @wood = "Alder"
      @strings = 6
    end
  
    def information
      "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
end
  
guitar = Guitar.new 
puts guitar.information
puts guitar
  
  
  
  #* Ruby's default string representation of our object: 
class Guitar 
    def initialize
        @type = "Acoustic"
        @wood = "Alder"
        @strings = 6
    end

    def information
        "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
end
  
guitar = Guitar.new 
puts guitar.information #* "An Acoustic Alder guitar with 6 strings."
puts guitar.to_s #* #<Guitar:0x0000013169a0c710>   
puts guitar #* #<Guitar:0x0000013169a0c710>

#* As you can see, the latter output returns the same object location.
#* That is Ruby's default string representation of our object. 
  
  
  
#* Now, we can override the to_s method using our own definition of that method.
class Guitar
    def initialize
        @type = "Acoustic"
        @wood = "Alder"
        @strings = 6
    end

    def to_s 
        "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
end

guitar = Guitar.new  
puts guitar.to_s #* => "An Acoustic Alder guitar with 6 strings."
puts guitar #* => "An Acoustic Alder guitar with 6 strings."



#* 7. The "self" keyword.

#* We'll learn the "self" keyword.
#* It returns the entity in which the keyword is used. 
#* Self in the broader sense refers to the entity in which 
#* the keyword is used. When self is used within the Class Body, it returns the class.
#* But when it is used within the object method, it returns the default representation of string or the to_s method.
class Guitar
    puts "Inside Guitar class: #{self}" #* => "Inside Guitar class: Guitar", *This can run without instantiating an object.*
  
    def initialize
      @type = "Acoustic"
      @wood = "Alder"
      @strings = 6
    end
  
    # def to_s 
    #   "An #{@type} #{@wood} guitar with #{@strings} strings."
    # end
  
    #* Refers to the instance method of to_s, that is why it is printing its content.
    #* Self is a reference to the instance, the actual object that 
    #* you're invoking the method on. 
    def details 
      puts "inside details instance method: #{self}"
    end
  
end
  
guitar = Guitar.new  
guitar.details
  
  
#* We'll learn the "self" keyword.
#* It returns the entity in which the keyword is used. 
#* Self in the broader sense refers to the entity in which 
#* the keyword is used. When self is used within the Class Body, it returns the class.
#* But when it is used within the object method, it returns the default representation of string or the to_s method.

class Guitar
    puts "Inside Guitar class: #{self}" #* => "Inside Guitar class: Guitar", *This can run without instantiating an object.*

    def initialize
        @type = "Acoustic"
        @wood = "Alder"
        @strings = 6
    end

    #* Within an instance methods, we can invoke other instance methods
    #* In this case, the methods available in Class creation or the Blueprint.
    #* Self represents the instance. 
    def details 
        puts "Is it nil? #{self.nil?}. It is made from #{self.class} class."
    end
end

guitar = Guitar.new  
puts guitar.class #* => Guitar
puts guitar.nil? #* => false
puts guitar.details #* => Is it nil? false
  
  

#* Run it with no concrete instance or schematic: 
#* We'll learn the "self" keyword.
#* It returns the entity in which the keyword is used. 
#* Self in the broader sense refers to the entity in which 
#* the keyword is used. When self is used within the Class Body, it returns the class.
#* But when it is used within the object method, it returns the default representation of string or the to_s method.
class Guitar
    puts "Inside Guitar class: #{self}" #* => "Inside Guitar class: Guitar", *This can run without instantiating an object.*

    def initialize
        @type = "Acoustic"
        @wood = "Alder"
        @strings = 6
    end

    #* Within an instance methods, we can invoke other instance methods
    #* In this case, the methods available in Class creation or the Blueprint.
    #* Self represents the instance. 
    def details 
        puts "Is it nil? #{self.nil?}. It is made from #{self.class} class."
    end
end
  
#* Self will represent the instance when the object actually exist.
  


#* 8. Omitting the "self" keyword.

#* Omitting the self keyword. 
class Guitar
    def initialize
      @type = "Acoustic"
      @wood = "Alder"
      @strings = 6
    end
  
    def to_s
      "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
  
    #* The self keyword will represent the object or instance.
    def details
      self.nil_details
      self.class_details
    end
  
    def nil_details
      puts "Is it nil? #{self.nil?}."
    end
  
    def class_details
      puts "It is made from #{self.class} class."
    end
end
  
guitar = Guitar.new 
guitar.details
  
  
  
#* Omitting the self keyword for less syntax: 
#* Omitting the self keyword. 
#* If we remove the self keyword, ruby will assume that what you are 
#* invoking upon the method is the self which represents the current guitar object.
class Guitar
    def initialize
        @type = "Acoustic"
        @wood = "Alder"
        @strings = 6
    end

    def to_s
        "An #{@type} #{@wood} guitar with #{@strings} strings."
    end

    #* The self keyword will represent the object or instance.
    def details
        nil_details
        class_details
    end

    def nil_details
        puts "Is it nil? #{nil?}."
    end

    def class_details
        puts "It is made from #{self.class} class."
    end
end

guitar = Guitar.new 
guitar.details
  
  
#*=begin   
#*  Instances or Circumstances where we need to use the "self" keyword explicitly: 
#*    - When we use the "class" method. We cannot omit the "self" keyword here. 
#*      Ruby will think that we are trying to define a class in a random string. 
#*      Give ruby the clarity she needed like we want to invoke the class method on an 
#*      instance method.  
#*=end



#* 9. Getter Methods (Read).

#* The getter methods.
#* A method reads/gets/retrieves the value of an instance variable.

class Guitar
    #* Instance variables are hidden or encapsulated. They are private by default
    #* Therefore they cannot be easily access.
    def initialize
      @type = "Acoustic"
      @wood = "Alder"
      @strings = 6
    end
  
    def to_s
      "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
  
    #* Getter Methods: 
    #* Within the body of my instance method, I can access any piece of information
    #* through any instance variable and expose them.  
    #* Be descriptive with our method names to avoid confusion.
    def type
      @type 
    end
  
    def wood 
      @wood 
    end
  
    def strings
      @strings
    end
end
  
guitar = Guitar.new 
p guitar.type #* Expose it via method
p guitar.wood #* Expose it via method
p guitar.strings #* Expose it via method



#* 10. Setter Methods (Write).

#* Setter methods - A setter method writes/sets/updates the value of an instance variable.
#* This is the method that allows us to update the values of our instance variables.
class Guitar
    def initialize
        @type = "Acoustic"
        @wood = "Alder"
        @strings = 6
        @price = 1500 #* *Since price changes all the time.*
    end
  
    def to_s 
      "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
  
    def type 
      @type
    end
  
    def wood 
      @wood
    end
  
    def strings
      @strings
    end
  
    def price 
      @price
    end
  
    #* Community convention for naming setter methods: 
    def price=(new_price)
      @price = new_price
    end
end
  
guitar = Guitar.new 
p guitar.price #* => 1500
guitar.price = (5000)
p guitar.price #* => 5000


#* Shorthand syntax if we follow the Community Convention: 
#* A lot more cleaner: 
guitar.price = 10000
p guitar.price #* => 10000



#* 11. The "attr_reader" and "attr_writer" methods.

#* The shorthand syntax for getter and setter methods.
#* The attr_reader and attr_writer

class Guitar
    #* Setter Methods: 
    attr_reader :type, :wood, :strings, :price
    
    #* Getter Methods: 
    attr_writer :price 
  
    def initialize
      @type = "Acoustic"
      @wood = "Alder"
      @strings = 6
      @price = 1500
    end
  
    def to_s 
      "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
end
  
guitar = Guitar.new 
puts guitar

p guitar.type
p guitar.wood
p guitar.strings
p guitar.price

guitar.price = 2000
p guitar.price 



#* 12. The "attr_accessor" methods.

#* The attr_accessor method.
#* A shorthand syntax to access instance variables.
#* Works the same as getter and setter especially for variables that are needed to be override.
#* Simplify the code even further.
class Guitar
    #* We remove the "price" as we want to read and write unto it. 
    attr_reader :type, :wood, :strings
    attr_accessor :price
  
    def initialize
      @type = "Acoustic"
      @wood = "Alder"
      @strings = 6
      @price = 1500
    end
  
    def to_s 
      "An #{@type} #{@wood} guitar with #{@strings} strings."
    end
end
  
guitar = Guitar.new 
puts guitar
  
p guitar.type
p guitar.wood
p guitar.strings
p guitar.price

guitar.price = 2000
p guitar.price 



#* 13. Add parameters to initialize methods.

#* Adding parameters to our initialize method.
#* No longer hard-coding our values.
#* It became more customizable.

class Guitar 

    attr_reader :type, :wood, :strings
    attr_accessor :price
  
    def initialize(type, wood, strings, price)
      @type = type
      @wood = wood
      @strings = strings
      @price = price
    end
  
    def to_s
      "An #{@type} #{@wood} guitar with #{@strings} strings that is worth #{@price} dollars."
    end
end
  
sound_viking_2000 = Guitar.new("Acoustic", "Mahogany", 6, 2000)
puts sound_viking_2000
puts sound_viking_2000.type
puts sound_viking_2000.wood
puts sound_viking_2000.strings
puts sound_viking_2000.price
puts 

thunderstorm = Guitar.new("Electric", "Alder", 7, 2400)
puts thunderstorm 
puts thunderstorm.type 
puts thunderstorm.wood
puts thunderstorm.strings
puts thunderstorm.price