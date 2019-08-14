class Movie
  
    attr_accessor :title, :year, :boxOffice # :actors
    
    @@allActors = []
    @@movies = []

    
    def initialize(title)#, year, boxOffice)
      @title = title
      @@movies << self
      # @year = year
      # @boxOffice = boxOffice
      @actors = []
    end
    
    def self.actors
      @@allActors.each do |actor|
        puts actor.name
      end
    end

    def actors
        # @actors.each do |actor|
        #   puts actor.name
        # end
        @actors
    end

    def addActors(*actors)
        actors.each do | actor |
          unless @@allActors.include?(actor)
            @@allActors << actor
          end
          @actors << actor
          actor.movies << self
        end

    end
    
    def self.most_actors
      counter = 0
      title = ""
      Movie.all.each do |movie|
        if movie.actors.length > counter
          counter = movie.actors.length
          title = movie.title
        end
      end
      # puts counter
      puts title
    end
    
    def self.all
      @@movies
    end
    
  end