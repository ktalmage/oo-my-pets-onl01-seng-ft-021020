require 'pry'
class Owner
  
  attr_reader :name, :human
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    
    save
  end
  
  def name
    @name 
  end
  
  def species
    @species
  end
  
  def save
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    
    self.all.clear
  end
  
  def say_species
    
    return "I am a #{@species}."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
   end
   
   def dogs
     Dog.all.select {|dog| dog.owner == self}
   end
   
   def buy_cat(cat_name)
     
     cat = Cat.new(cat_name)
     
   end  
end