class FormulationsController < ApplicationController
  # def index
  #   res = FormulationIngredient.includes(:ingredient, :formulation)
  #                     .group_by { |e| e.formulation }
  #
  #   res.keys.map! { |e| e.name }
  #
  #   render json: res
  # end

  def index
    formulations = Formulation.all.includes(:ingredients)

    render json: formulations
  end
end
