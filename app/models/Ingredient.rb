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
    allergen_count = Hash.new(0)

    ingredients_array = Allergen.all.map {|allergen| allergen.ingredient}

    ingredients_array.each { |ingredient| allergen_count[ingredient] += 1}

    allergen_count.key(allergen_count.values.max)

  end

  def allergens
    Allergen.all.select { |ag| ag.ingredient == self }
  end

end
