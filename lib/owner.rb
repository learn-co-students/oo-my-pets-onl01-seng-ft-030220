class Owner

  attr_accessor :name, :species, :human

  @@all = []

  def initialize(name, species)
    @name = name.freeze # has a name and cannot be changed
    @species = species # initializes with species set to human and cannot be changed
  end

  def species
    @species = human
  end

  def self.all
    @@all
  end

  def say_species
    puts "I am a #{@species}." # can say its species
  end

  def owner_count
    self.owner_count = self.owner.length
  end

end
