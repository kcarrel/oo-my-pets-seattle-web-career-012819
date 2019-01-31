class Owner
  
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []

  def initialize(species)
    @species = species 
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
  
 # def pets 
  #  @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  #end 
  
  def buy_fish(fish)
     @pets[:fishes] << Fish.new(fish)
  end 
  
  def buy_cat(cat)
     @pets[:cats] << Cat.new(cat)
  end 
  
  def buy_dog(dog)
     @pets[:dogs] << Dog.new(dog)
  end 
  
  def walk_dogs
  end 
  
end