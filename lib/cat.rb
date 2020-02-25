require 'pry'
class Cat
  
  attr_accessor :owner,:mood
  attr_reader :name
  
    @@all = []
    
    def initialize(name,owner,mood = "nervous")
      @name = name
      @owner = owner
      @mood = mood
      save
    end
    
    def self.all
      @@all
    end
    
    def buy_cat(name,owner,mood)
      
      self.new(name,owner,mood)
      
     end 
    
    def save
      @@all << self
    end
end

