require 'pry'
class Fruit 
    attr_accessor(:color, :ripe)  #macro 
    attr_reader :name  

    # the order of your arguments really matter! 
    def initialize(name="apple", color="red", ripeness=true)
        @name = name 
        self.color = color 
        self.ripe = ripeness 
        @extra = "extra"
    end
end

Fruit.new 
Fruit.new('apple', 'red', false)
Fruit.new('pear', 'green')
Fruit.new('strawberry', false)

binding.pry 