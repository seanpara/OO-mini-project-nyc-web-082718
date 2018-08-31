require_relative "User"
require_relative "Recipe"
require "pry"

class RecipeCard

  attr_accessor :user, :recipe, :rating, :date

  @@all=[]

  def initialize(user, recipe, rating = nil, date = nil)
    @user = user
    @recipe = recipe
    @rating = rating.to_i
    @date = date
    @@all.push(self)
  end

  def self.all
    @@all
  end



end
