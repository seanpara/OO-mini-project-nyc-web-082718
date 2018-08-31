require "pry"

class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    #
  end

end
