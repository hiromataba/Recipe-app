class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  validates :food_id, presence: true, uniqueness: { scope: :recipe_id }
  validates :quantity, presence: true, numericality: { greater_than: 0 }

  def self.get_recipe_foods(current_user)
    RecipeFood.joins(:food, :recipe).where(food: { user: current_user }, recipe: { user: current_user })
  end
  def self.get_recipe_foods_count(current_user)
    get_recipe_foods(current_user).select('food_id').distinct.count
  end
  def self.get_recipe_foods_sum(current_user)
    get_recipe_foods(current_user).sum('quantity * price')
  end
  def self.get_grouped_recipe_food(current_user)
    get_recipe_foods(current_user).group('food.name, price, measurement_unit')
    .select('food.name, SUM(quantity) as quantity, (sum(quantity) * price) as price, measurement_unit')
  end

end
