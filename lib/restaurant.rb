
class Restaurant

attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_rl
    ResturantLocation.all.select do |rl|
      rl.restaurant == self
    end
  end

  def locations
    my_rl.map do |rest_rl|
      rest_rl.location
    end
  end

  def total_rent
    my_rl.map do |rest_rl|
      rest_rl.location.rent
    end.reduce(:+)
  end

  def create_location (location)
    ResturantLocation.new(self, location)
  end

end
