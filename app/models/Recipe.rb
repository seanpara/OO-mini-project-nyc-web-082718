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
    # names = RecipeCard.all.map {|rc| rc.user}
    # counts = Hash.new(0)
    # names.each {|name| counts[name] += 1}


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
    self.ingredients.select {|i| i.allergens}
  end

  def add_ingredients(ingredients)
    #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    RecipeIngredient.new(self, ingredients)

  end

end
