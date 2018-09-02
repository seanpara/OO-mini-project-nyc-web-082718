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

    recipe_count = Hash.new(0)

    recipe_array = RecipeCard.all.map {|rc| rc.recipe}

    recipe_array.each { |recipe| recipe_count[recipe] += 1}

    recipe_count.key(recipe_count.values.max)

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
