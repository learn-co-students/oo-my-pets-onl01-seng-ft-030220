  class Owner
  # code goes here
  attr_reader :name, :species 
  
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
    
end

def say_species
  specie = "I am a #{@species}."
  specie 
end 

def self.all 
  @@all
end 

def self.count 
  @@all.size 
end

def self.reset_all
  @@all.clear
end 

def cats 
  all_cats = []
  Cat.all.each do |a|
    if a.owner == self 
      all_cats << a
    end 
  end 
  all_cats 
end 

def dogs 
  all_dogs = []
  Dog.all.each do |a|
    if a.owner == self 
      all_dogs << a
    end
  end 
  all_dogs 
end 

def buy_dog(dog_name)
  owner_name = self 
  bought_a_dog = Dog.new(dog_name, owner_name)
end 

def buy_cat(cat_name)
  owner_name = self 
  bought_a_cat = Cat.new(cat_name, owner_name)
end 

def walk_dogs
  dogs.each { |a| a.mood = "happy"}
end 

def feed_cats
  cats.each {|a| a.mood = "happy"}
end 

def sell_pets 
  pets = self.dogs + self.cats 
  pets.each do |a|
    a.mood = "nervous"
  a.owner = nil 
end 
end 

def list_pets 
  
return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

end 
end 