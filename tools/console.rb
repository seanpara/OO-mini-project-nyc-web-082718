require_relative '../config/environment.rb'


r1 = Recipe.new("fish sticks")
r2 = Recipe.new("beef wellington")
r3 = Recipe.new("apple pie")
r4 = Recipe.new("old fashioned")
r5 = Recipe.new("pigeon")
r6 = Recipe.new("pork")
r7 = Recipe.new("shake")


u1 = User.new("Johrten")
u2 = User.new("Sean")
u3 = User.new("Mike")
u4 = User.new("Brooke")

rc1 = RecipeCard.new(u1, r1, 1,"8/31")
rc2 = RecipeCard.new(u2, r1, 5,"7/31")
rc3 = RecipeCard.new(u3, r1, 2,"8/21")
rc4 = RecipeCard.new(u1, r3, 4,"9/27")
rc5 = RecipeCard.new(u4, r3, 3,"2/28")
rc6 = RecipeCard.new(u4, r2, 2,"5/27")
rc7 = RecipeCard.new(u1, r5, 10,"5/12")

i1 = Ingredient.new("Fish")
i2 = Ingredient.new("bread crumbs")
i3 = Ingredient.new("flour")
i4 = Ingredient.new("steak")
i5 = Ingredient.new("butter")
i6 = Ingredient.new("apples")
i7 = Ingredient.new("whiskey")


ag1 = Allergen.new(u1, i1)
ag2 = Allergen.new(u4, i1)
ag3 = Allergen.new(u1, i5)
ag4 = Allergen.new(u2, i2)
ag5 = Allergen.new(u3, i4)
ag5 = Allergen.new(u4, i2)


ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r2, i3)
ri3 = RecipeIngredient.new(r3, i6)
ri4 = RecipeIngredient.new(r1, i3)
ri5 = RecipeIngredient.new(r1, i5)
ri6 = RecipeIngredient.new(r4, i6)


binding.pry
