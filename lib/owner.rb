require 'pry'

class Owner

  @@all = []
  @@pets = []

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

  def cats     #expected to eq 3
    Cat.all.select { |cats| cats.owner == self }
    @cats = Cat.all.select { |cats| cats.owner == self }
    @@pets << cats
  end

  def dogs      #expected to eq 3
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

  def buy_cat(owner, cats)
    @cats = 0
    @cats += 1
    self.cats << cats.owner
    buy_cat
  end

  def buy_dog(dogs)
    dogs = 0
    until dogs = 3
    dogs += 1
    end
    Dog.all.select { |dogs| owner.dogs }
  end

  def walk_dogs
    dogs.select { |dogs| dogs.mood = "happy" }
  end

  def feed_cats
    cats.select { |cats| cats.mood = "happy" }
  end

  def sell_pets
    cats.select { |cats| cats.mood = "nervous" }
    dogs.select { |dogs| dogs.mood = "nervous" }
    if dogs.nil?
    self.cats.garbage_collect
    end
  end

  def list_pets
    "I have #{dogs.owner.length} dog(s), and #{cats.owner.length} cat(s)."
  end

    def self.all
      @@all
    end


    def self.count

      def self.count
      @@all.size
    end

    def self.reset_all
      @@all.clear
    end
  end
