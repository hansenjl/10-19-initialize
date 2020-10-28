require 'pry'
class Fruit 
    attr_accessor(:color, :ripe)  #macro 
    attr_reader :name  

    # the order of arguments does NOT matter 
    # the sybmols we input have to match the arguments 
    # all arguments are expected (unless given a default value)
    def initialize(name: "apple", color: "red", ripe: true)
        @name = name 
        self.color = color 
        self.ripe = ripe 
    end
end

 Fruit.new(color:'orange', name:'tangerine')
 Fruit.new(name:'banana', ripe: false, color:'green')
Fruit.new
binding.pry







