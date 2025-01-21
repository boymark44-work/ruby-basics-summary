# Define a custom_map method that accepts an array.
# The method should emulate the functionality of the array's map method.
# The block that we pass to custom_map will specify what to do to
# each array element. The custom_map method should return an array
# of the results of those operations.
# Do NOT use the array's map method in your solution.

#* Solution: 
def custom_map(elements)

    i = 0 
    result = [] 

    while i < elements.length  
        result << yield(elements[i]) 
        
        i += 1
    end

    result
end

p custom_map([1, 2, 3]) { |number| number * 3 }            #* => [3, 6, 9]
p custom_map(["Hello", "Goodbye"]) { |text| text.length }  #* => [5, 7]
p custom_map([]) { |text| text.length }                    #* => []

  
  
#* Solution by Boris:  
def custom_map(elements)
    i = 0 
    results = [] 

    while i < elements.length   
        result = yield(elements[i])  
        results << result
        i += 1
    end

    results
end

p custom_map([1, 2, 3]) { |number| number * 3 }            #* => [3, 6, 9]
p custom_map(["Hello", "Goodbye"]) { |text| text.length }  #* => [5, 7]
p custom_map([]) { |text| text.length }                    #* => []

  