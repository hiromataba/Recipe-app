class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods, dependent: :destroy

  validates :name, :preparation_time, :cooking_time, :description, presence: true

  def total_items
    recipe_foods.sum(:quantity)
  end

  def total_price
    recipe_foods.joins(:recipe, :food).sum('price * quantity')
  end

  def self.gett_public_recipes
    Recipe.includes(:user, :recipe_foods).where({ public: true }).order(created_at: :desc)
  end
end
