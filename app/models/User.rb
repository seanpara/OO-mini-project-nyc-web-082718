require "pry"

class User

  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select { |rc| rc.user == self }.map do |rc|
      rc.recipe
    end
  end

  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, rating, date)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select { |ag| ag.user == self }.map do |ag|
      ag.ingredient
    end
  end

  def top_three_recipes
    #go into the recipe cards, take those recipe card's ratings, and sort, reverse, and rank them
    RecipeCard.all.sort_by! {|rc| rc.rating}.reverse.slice(0,3)
  end

  def most_recent_recipe
    RecipeCard.all.select {|rc| rc.user == self}.map {|rc| rc.recipe}.pop
  end

end
