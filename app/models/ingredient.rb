class Ingredient < ApplicationRecord
  has_many :formulation_ingredients
  has_many :formulations, through: :formulation_ingredients

  validates :name, presence: true, uniqueness: true
  validates :minimum_percentage, presence: true
  validates :maximum_percentage, presence: true
end
