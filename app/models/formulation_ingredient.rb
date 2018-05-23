class FormulationIngredient < ApplicationRecord
  belongs_to :formulation
  belongs_to :ingredient

  validates :percentage, presence: true
end
