class Formulation < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
