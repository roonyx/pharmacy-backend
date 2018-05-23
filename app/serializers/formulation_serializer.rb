class FormulationSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :ingredients, through: :base
end
