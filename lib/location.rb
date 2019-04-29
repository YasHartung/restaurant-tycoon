
class Location

  attr_reader :name, :rent

  @@all = []

  def initialize(name, rent)
    @name = name
    @rent = rent
    @@all << self
  end

  def self.all
    @@all
  end

  def all_addresses
    self.all.map do |location|
      location.name
    end
  end
end
