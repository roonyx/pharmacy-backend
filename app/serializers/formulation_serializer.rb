class FormulationSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :formulation_ingredients
end
