class Actor
  
    attr_accessor :name, :title, :movies
    
    @@actors = []
    @characters = []
    
    def initialize(name)
      @name = name
      @@actors << self
      @movies = []
    end
    
    def addCharacter(charName, movie, actor)
      @characters << Character.new(charName, movie, actor)
    end
    
    # def addMovie(title)
    #   @movies << title
    # end

    def movies
        @movies
    end
    
    def self.most_characters
      Actor.characters
    end

    def self.all
        @@actors
    end
    
  end