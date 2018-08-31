require "pry"


class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.most_popular
    #Take RecipeCard.all and count the number of users per recipe
    #Return the recipe with the most users
  end

  def users
    RecipeCard.all.select { |rc| rc.recipe == self }.map do |rc|
      rc.user
    end
  end

  def ingredients
    #take all elements of RecipeIngredient array and select ones that have this recipe instance
    RecipeIngredient.all.select { |ri| ri.recipe == self }.map do |ri|
      ri.ingredient
    end
  end

  def allergens
    ingredients.select { |ag| ag.recipe == self }.map do |ag|
      ag.allergen
    end
  end

end
