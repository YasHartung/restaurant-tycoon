require_relative '../config/environment.rb'

mhtn = Location.new("Manhattan", 15000)
la = Location.new("LA", 10000)
miami = Location.new("Miami", 7500)

ccf = Restaurant.new("Cheescake Factory")
sushi = Restaurant.new("Sushi")
mexican = Restaurant.new("Mexican")
cuban = Restaurant.new("Cuban")

ccf_miami = ResturantLocation.new(ccf , miami)
ccf_la = ResturantLocation.new(ccf , la)
sushi_la = ResturantLocation.new(sushi , la)
sushi_ny = ResturantLocation.new(sushi , mhtn)
mexican_ny = ResturantLocation.new(mexican , mhtn)
mexican_miami = ResturantLocation.new(mexican , miami)
cuban_miami = ResturantLocation.new(cuban , miami)

ccf.create_location(mhtn)

binding.pry

puts "yummy"
