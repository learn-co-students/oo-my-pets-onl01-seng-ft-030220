require 'pry'

class Owner

  @@all = []

  attr_accessor :pets, :cats, :owner, :mood, :count, :dogs
  attr_reader :species, :name

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def name
    @name
  end

  def say_species
    return "I am a #{@species}."
  end

  def cats
    Cat.all.select { |cats| cats.owner == self }
  end

  def dogs
    Dog.all.select { |dogs| dogs.owner == self }
  end

  def buy_cat(cats)
    Cat.new(cats, self)
  end

  def buy_dog(dogs)
    Dog.new(dogs, self)
  end

  def walk_dogs
    dogs.select { |dogs| dogs.mood = "happy" }
  end

  def feed_cats
    cats.select { |cats| cats.mood = "happy" }
  end

  def sell_pets
    cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
    end
    dogs.each do |dog|
    dog.mood = "nervous"
    dog.owner = nil
    end
  end

  def list_pets
    num_dogs = self.dogs.count
    num_cats = self.cats.count
    "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
    @@pets << dogs
  end

  def buy_cat(cats)
    Cat.new(cats, self)
  end

  def buy_dog(dogs)
    Dog.new(dogs, self)
  end

  def walk_dogs
    dogs.select { |dogs| dogs.mood = "happy" }
  end

  def feed_cats
    cats.select { |cats| cats.mood = "happy" }
  end

  def sell_pets
    cats.each do |cats|
      cats.mood = "nervous"
      cats.owner = nil
    end
    dogs.each do |dogs|
      dogs.mood = "nervous"
      dogs.owner = nil
    end
  end

  def list_pets
    num_cats = cats.size
    num_dogs = dogs.size
    "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
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
end
