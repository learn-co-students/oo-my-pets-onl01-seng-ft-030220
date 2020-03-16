require 'pry'
class Owner
  
  attr_reader :name, :species 
  @@all = []
  def initialize(name, species = "human")
    @name = name  
    @species = species 
    @@all << self 
  end
  
  def say_species 
     "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.length 
  end 
  
  def self.reset_all
    @@all = []
  end
#  
  def cats 
   # binding.pry 
   array = []
    Cat.all.map do |cat|
      if cat.owner == self 
        array << cat
      end
    end
    array 
  end
  
   def dogs 
   # binding.pry 
   array = []
    Dog.all.map do |dog|
      if dog.owner == self 
        array << dog 
      end
    end
    array 
  end
  
  def buy_cat(cat_name)
    # binding.pry 
    # Cat.all.each do |cat|
    #   if cat_name == cat.name 
    #     cat.owner = self
    #       binding.pry
    #   end
    # end
    cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
   def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets = self.cats + self.dogs
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil 
    end
  end
    
  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end     
  
end