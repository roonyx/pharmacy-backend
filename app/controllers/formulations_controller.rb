class FormulationsController < ApplicationController
  def index
    render json: Formulation.includes(:ingredients)
  end
end
