class Owner
  
  attr_reader :species
  attr_accessor :name 
  
  @@all = []
 #@@pets = {:cats=>[], :dogs=>[], :fishes=>[]}

  def initialize(species,name)
    @species = species 
    @name = name 
    @@all << self 
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}

  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.length 
  end 
  
  def self.reset_all
   @@all.clear
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def name
    @name 
  end 
  
  def pets 
    @@pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end 
  
  def self.buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
end