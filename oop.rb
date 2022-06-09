# An object in code is a thing with all the data and all the logic required to complete a task. Objects are models and metaphors for the problems we solve in code
# Class is a custom data type eg Book.... all classes must be an object hence variable name starts with a capital letter
# Instance of a class is an object eg book 1 and book 2
# Objects are instances of a class
# Class names start with capital letters because they are stored as constatnts in ruby, they can also be camelCased
# n instance is a single occurrence of an object. 
# Instances refer to the individual objects produced from the class.
# A class is like a template, or a blueprint, for creating objects with similar characteristics.
# dot notation can be used both to call a method and to access an attribute of an object
puts 1.class
# Everything in a ruby 
puts 2.is_a?Object
p "Enid".is_a?Object

puts [1,2,3].class

class Book
    attr_accessor :title, :author, :pages
end    

book1 = Book.new()
book1.title = "The river and the source"
book1.author = "Margret Ogolla"
book1.pages = 1000

puts book1.title
puts book1.pages

book2 = Book.new
book2.title = "Kidagaa kimemwozea"
book2.pages = 300
book2.author = "Ken Walibora"

puts book2.author

# Initialize method
class Names
    attr_accessor :titles, :lugha
    def initialize (titles,lugha)
        @titles = titles,
        @lugha = lugha   
    end 
end 

name1 = Names.new("Enid","Kisii")

name2 = Names.new("Norbert","Ekegusii")
      
puts name2.lugha

puts name1.class
# ruby methods of classes
puts name1.methods

