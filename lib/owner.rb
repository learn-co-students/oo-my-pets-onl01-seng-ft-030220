require 'pry'
class Owner

  attr_accessor
  attr_reader :name, :species
  
  @@all = []
  
  def initialize (name, species = "human")
    @name = name
    @species = species
    @@all << self 
  end 
  
  def say_species
    "I am a " + @species + "."
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count
    @@all.count  
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def cats 
    Cat.all.select do |cat|
     cat.owner == self
    end 
  end 
  
   def dogs 
    Dog.all.select do |dog|
     dog.owner == self
    end 
  end 
  
  def buy_cat(cat)
    cat = Cat.new(cat, self)
  end 
  
  def buy_dog(name)
    name = Dog.new(name, self)
  end 
  
  def walk_dogs
    Dog.all.select do |dog|
      dog.owner == self
    dog.mood = "happy"
    end 
  end 
  
  def feed_cats
    Cat.all.select do |cat|
      cat.owner == self
    cat.mood = "happy"
    end 
  end 

  def sell_pets
    Dog.all.collect do |dog|
     dog.owner == self
     dog.mood  = "nervous"
     dog.owner = nil 
    end 
    
    Cat.all.collect do |cat|
     cat.owner == self
     cat.mood = "nervous"
     cat.owner = nil 
    end 
  end 

  def list_pets 
    d_count = self.dogs.count
    c_count = self.cats.count
    return "I have #{d_count} dog(s), and #{c_count} cat(s)."
  end 

  
end 