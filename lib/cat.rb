class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(cat_name, owner_name)
    @name = cat_name 
    @owner = owner_name 
    @mood = "nervous"
    @@all << self 
end

def self.all 
  @@all
end 
end 
