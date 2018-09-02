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
    #should return the ingredient instance that the highest number of users are allergic to
    Allergen.all.count {|allergen| allergen.ingredient}
  end

  def allergens
    Allergen.all.select { |ag| ag.ingredient == self }
  end

end
