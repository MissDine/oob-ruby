# An object is some data with a set of attributes and behaviour
# A class is a blueprint/template for creating objects
# A class tells us the attributes and behaviours that a particular object will have.
# Its upto the developer to determine the attributes and behavioutr this class/blueprint will have
# Class is a custom data type eg Book.... all classes must be an object hence variable name starts with a capital letter
# Instance of a class is an object eg book 1 and book 2
# Objects are instances of a class
# Class names start with capital letters because they are stored as constatnts in ruby, they can also be camelCased
# n instance is a single occurrence of an object. 
# Instances refer to the individual objects produced from the class.
# A class is like a template, or a blueprint, for creating objects with similar characteristics.
# dot notation can be used both to call a method and to access an attribute of an object

# How to create a class and give the class attributes
class Car
    # Ruby doesnt accept local variables hence we create instance variables using the @
    # Instance variables means that each object we create out of this class will a specific attibute eg color and model
    # attributes
    @color 
    @model
    # att read/write permissions using attr_accessor
    attr_accessor :color, :model

    # behaviours
    def turn_right
        puts "vuum"
    end

    def reverse
        puts "mmmmh"
    end 

    def fast
        if @model == "Subaru"
            puts "#{model},is very fast"
        else
            puts "#{model},is very slow"
        end        
    end  
end    

# create a new car - instance/object of class Car
# car1 is an instancd of class Car
car1 = Car.new
# car1 will have all the attributes and behaviours of Car
# we call any of this methods using the dot notation
car1.reverse
puts car1.model = "Subaru"
puts car1.fast

# INSTANCE AND CLASS VARIABLES/METHODS
car2 = Car.new
puts car2.model = "Premio"
puts car2.fast

# Instance variables are variables that are dependent ot tied to a specific object eg each car has a distict model and car


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
    attr_accessor :jina, :lugha
    def initialize (jina,lugha)
        @jina = jina,
        @lugha = lugha   
    end 
end 

name1 = Names.new("Enid", "kisii")

name2 = Names.new("Norbert","Ekegusii")
      
puts name2.lugha
puts name1.lugha

puts name1.class
# ruby methods of classes
# puts name1.methods


# CLASS VARIABLES-are available across all objects
# Are independent of any object of a class
# class methods can be called directly from a class by Class_Name.class_method syntax
# class variables are denoted by @@
# Class methods are denoted by the self keyword

class Dog
    # class variable
    @@total_no_of_dogs = 0
    attr_accessor :name, :age
# Attributes
    def initialize(name, age)
        @name = name,
        @age = age
        @@total_no_of_dogs += 1
    end    
     # Class method
    def self.get_total_no_of_dogs
        @@total_no_of_dogs
    end    

    # Behaviour
    def bark
        puts "woof"
    end
    
    def howl
        puts "awool"
    end
    
    def fetch_ball
        if age < 6
            puts "#{@name},will run excitedly to pick the ball"
        else
            "#{@name},will walk slowly to pick the ball"    
        end
    end    
end    

dog1 = Dog.new("Tommy", 3)

dog2 = Dog.new("Kelsy", 9)

dog3 = Dog.new("Jerry", 6)

dog4 = Dog.new("lenny", 1)

puts "#{dog1.name} is #{dog1.age} years old"
puts "#{dog2.name} is #{dog2.age} years old"

dog1.fetch_ball

dog2.fetch_ball

# We call a class method by calling the class .name of the class method
puts "The total number of dogs is: #{Dog.get_total_no_of_dogs}"

# When to use an instance vs class variable/method
# Instance-when u want to relate logic to a specific instance of a class
# Class -when there is logic that does not operate on a specific instance

# Attr_reader-can only be read hence kinda a constant
# Attr_writter - can be overwritten.

# 100.times {puts "I'm sorry"}



# PRINCIPLES OF OBJECT ORIENTED DESIGN
# A program's design refers to the manner in which you, the programmer, organize and arrange its code 
# BASIC RESPONSIBILITY PRINCIPLE
# 1.The Single Responsibility Principle and Separation of Concerns-Each class shoul have a single responsibility and various concerns separated
# 2.Abstraction and DRY-do not repeat yourself
# 3.Line Limits on Methods and Classes-methods should not exceed 5 lines of code and classes should not exceed 100.
# 4.Domain modelling- is a representation of real-world concepts in software. 



# SELF
# we call the object method using their class name

