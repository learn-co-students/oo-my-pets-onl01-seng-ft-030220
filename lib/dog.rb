class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(dog_name, owner_name)
    @name = dog_name 
    @owner = owner_name 
    @mood = "nervous"
    @@all << self 
end

def self.all 
  @@all
end 


end