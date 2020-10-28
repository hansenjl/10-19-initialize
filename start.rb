require 'pry'
class Fruit 

    def initialize 
        puts "inside initialize"
        "this is what I'm returning"
        #it doesn't matter what it returns 
    end
   
end 

fruit = Fruit.new

binding.pry

# what type of method is .new?
    # Class method 
# how can we tell?
    # we can look at what it's called upon & see that it's called upon Fruit (a class)
# where did it come from?
    # inate / pre-existing method that come built in with any class 
# what does it return?
    # => #<Fruit:0x00007fc5e08c9490>  a fruit instance 
# what is it doing?
    # creating a brand new instance of the Fruit class 
    # calling the .initialize method 

#what type of method is .initialize?
    #instance method 
#how can we tell?
    # because when we define it, we don't need to use self.instantiate 
#does it matter what it returns? Why or why not?
    # no b/c .new will ALWAYS return the new instance 
#what is the purpose on writing a custom initialize method?
    # so that our objects can be created with attributes 