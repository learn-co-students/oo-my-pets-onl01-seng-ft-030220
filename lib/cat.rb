
class Cat
@@cats = []
  attr_accessor :mood, :owner, :cats
  attr_reader :name

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@cats << self
  end

  def self.all
    @@cats
  end
end
