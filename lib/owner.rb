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
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end 
  end 
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end 
  end 
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end 
  end 
  
  def sell_pets
    pets.each do |pet, details|
      details.map do |pet|
        pet.mood = 'nervous'
      end
      pets.clear
   end 
  
  def list_pets 
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end 
  
  
end