class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :minimum_percentage, presence: true
  validates :maximum_percentage, presence: true
end
