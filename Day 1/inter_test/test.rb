#puts 2 + 2 
#puts 'dwa'

# if 2 + 2 == 4
#     puts 'maths works'
# else 
#     puts 'maths doesn\'t work!'
# end

# 12 > 14 ? puts('is grater') : puts('is less')

# odwrotny 'if'
# unless false 
#     puts 'witam'
# end

# puts 'Do something' unless false

# # infinite loop
# loop do 
#     puts 'witam'
#     sleep 1
# end

# collection = ["witam123","witam1233","witam123333"]
# for object in collection 
#     puts object
# end


# for number in 1..10
#     puts number
# end


# coll = [1,2,3,:test]
# coll.each do |element|
#     puts element
# end

# class Animal 
#        attr_accessor :name, :age 
#        def give_sound(sound)
#             puts "default sound  #{sound}" 
#        end

#        def initialize(new_name, new_age)
#         @name = new_name 
#         @age = new_age
#        end
# end 

# animal = Animal.new('Reksio', 4)
# # animal.name = 'Reksio'
# # animal.age = 2 
# puts animal.name + ' ' + animal.age.to_s
# # animal.give_sound('szczek szcek')

# module MyModule

#     class Squash 
#         def what
#             puts 'you play with your friends'
#         end
#     end
# end
# module Vegetables

#     class Squash
#         def what 
#             puts 'I\'m a vegetable'
#         end
#     end
# end

# a = Vegetables::Squash.new 
# puts a.what
# b = MyModule::Squash.new
# puts b.what

# class Animal 
#        attr_accessor :name, :age 
#        def give_sound
#             puts 'default sound' 
#        end

#        def initialize(new_name, new_age)
#         @name = new_name 
#         @age = new_age
#        end
# end 

# class Dog < Animal
#     def give_sound
#         puts 'Hau hau'
#     end
# end

# class Cat < Animal
#     def give_sound
#         puts 'Miau Miau'
#     end
# end

# reksio = Dog.new('Reksio', 4)
# filemon = Cat.new('Filemon', 10)
#  reksio.give_sound 
#  filemon.give_sound


# # 'wielodziedziczenie'

# module Whale 
#     def my_method
#         puts 'my method'
#     end
# end

# class Whale < Animal
#     include Whale
# end

# my_whale = Whale.new('Wielorybek', 100)
# my_whale.give_sound
# my_whale.my_method



