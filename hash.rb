
require 'pry'
class Fruit 
    attr_accessor(:color, :ripe)  #macro 
    attr_reader :name  

    #most flexible way of handling initialize 
    def initialize(attributes_hash={})
        @name = attributes_hash[:name] 
        self.color = attributes_hash[:color] 
        self.ripe =  attributes_hash[:ripe].nil? ? true :  attributes_hash[:ripe] #setting a default argument
    end
end

Fruit.new
Fruit.new({color:'orange', name:'tangerine'})
Fruit.new({color: 'red', ripe: false, name: 'apple', price: 14})

binding.pry