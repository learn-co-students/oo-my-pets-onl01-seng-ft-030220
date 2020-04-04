require 'pry'
class Dog

@@dogs = []

  attr_accessor :mood, :owner, :dogs
  attr_reader :name

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@dogs << self
  end

  def self.all
    @@dogs
  end
end
