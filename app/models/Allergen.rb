require_relative "Ingredient"
require_relative "User"
require "pry"

class Allergen

  attr_accessor :user, :ingredient

  @@all = []

  def initialize(user, ingedient)
    @user = user
    @ingredient = ingedient
    @@all.push(self)
  end

  def self.all
    @@all
  end

end
