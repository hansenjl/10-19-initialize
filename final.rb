###--- WITH NORMAL ARGUMENTS ---###

# class Fruit
#     attr_accessor :name, :color, :ripe

#     def initialize(name, color='red', ripe=true)
#         @name = name
#         @color = color
#         @ripe = ripe
#     end
# end

# Fruit.new('apple', 'red', false)
# Fruit.new('pear', 'green')
# Fruit.new('strawberry', false)

###---- WITH SYMBOLS ---###

# class Fruit

#     def initialize(name:'n/a', color:'red', ripe:true)
#         @name = name
#         @color = color
#         @ripe = ripe
#     end
# end
# binding.pry

# Fruit.new
# Fruit.new(name: 'apple', color: 'red', ripe: false)
# Fruit.new(color: 'red', ripe: false, name: 'apple')
# Fruit.new(name: 'pear', color: 'green')
# Fruit.new(ripe: false, name: 'strawberry')

###--- WITH A HASH ---###
# class Fruit

#     def initialize(attr_hash={})
#         # binding.pry
#         @name = attr_hash[:name]
#         @color = attr_hash[:color]
#         @ripe = attr_hash[:ripe]
#     end
# end
# binding.pry
# Fruit.new
# Fruit.new({name: 'apple', color: 'red', ripe: false})
# Fruit.new({color: 'red', ripe: false, name: 'apple'})
# Fruit.new({name: 'pear', color: 'green'})
# Fruit.new({ripe: false, name: 'strawberry'})


###--- WITH A HASH & THE SEND METHOD ---###
# class Fruit
#     attr_accessor :name, :color, :ripe

#     def initialize(attr_hash={})
# #         # binding.pry
# #         name = attr_hash[:name]
# #         self.color = attr_hash[:color]
# #         self.ripe = attr_hash[:ripe]
#           attr_hash.each do |key, value|
#               self.send("#{key}=", value)
#           end
#     end
# end
# binding.pry
# Fruit.new
# Fruit.new({name: 'apple', color: 'red', ripe: false})
# Fruit.new({color: 'red', ripe: false, name: 'apple'})
# Fruit.new({name: 'pear', color: 'green'})
# Fruit.new({ripe: false, name: 'strawberry'})
