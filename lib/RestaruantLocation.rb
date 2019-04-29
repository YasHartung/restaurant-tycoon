class ResturantLocation

attr_reader :restaurant, :location

@@all = []

  def initialize(restaurant, location)
    @restaurant = restaurant
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end 

end
