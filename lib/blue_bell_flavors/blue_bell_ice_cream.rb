class BlueBellFlavors::BlueBellIceCream

##this class must initiallize with the name(title), size, description, and nutrition
  #scraper method - ##all flavors MUST scrape for:
    #title, size (half gallon), description, and url with nutrition info.
  attr_accessor :name, :size, :description, :nutrition

  @@all = []

  def initialize(name, size, description, nutrition)
    @name = name
    @size = size
    @description = description
    @nutrition = nutrition
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_index(index)
    @@all[index]
  end
  
end
