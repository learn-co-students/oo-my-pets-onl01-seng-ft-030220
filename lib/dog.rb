class Dog
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, owner)
    @name = name
    self.owner = owner
    self.mood = 'nervous'

    @@all << self
  end
end
