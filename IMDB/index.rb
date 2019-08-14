require_relative "./actor.rb"
require_relative "./character.rb"
require_relative "./movie.rb"
require_relative "./show.rb"

fightClub = Movie.new("Fight Club")
hollywood = Movie.new("Once Upon a Time in Hollywood")
historyX = Movie.new("American History X")
blackDog = Movie.new("Black Dog")

brad = Actor.new("Brad Pitt")
leo = Actor.new("Leonardo Di'Caprio")
ed = Actor.new("Edward Norton")
brooks = Actor.new("Avery Brooks")
furlong = Actor.new("Edward Furlong")
ethan = Actor.new("Ethan Suplee")
meaty = Actor.new("Meat Loaf")
sway = Actor.new("Patrick Swayzie")
margot = Actor.new("Margot Robbie")
marg = Actor.new("Margaret Qualley")
emile = Actor.new("Emile Hirsch")



fightClub.addActors(brad, ed, meaty)
hollywood.addActors(brad, leo, margot, marg, emile)
historyX.addActors(ed, brooks, furlong, ethan)
blackDog.addActors(meaty, sway)


# puts Movie.actors
# Actor.all.each { |actor| puts actor.name }
# Movie.all.each { |movie| puts movie.title }

# puts "Fight Club Actors:"
# fightClub.actors
# puts ""
# puts "American History X:"
# historyX.actors

# Movie.actors

# brad.movies.each do |movie|
#     puts movie.title
# end

Movie.most_actors
