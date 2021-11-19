class UsersController < ApplicationController
  def show
    @recipe_foods = RecipeFood.get_recipe_foods(current_user)
    @items_count = RecipeFood.get_recipe_foods_count(current_user)
    @total_amount = RecipeFood.get_recipe_foods_sum(current_user)
    @items = RecipeFood.get_grouped_recipe_food(current_user)
  end
end
