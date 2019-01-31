class Fish

  attr_reader :name
  attr_accessor :mood
  
  
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 
  
  def self.mood 
    @mood = "playful"
  end 
  
end