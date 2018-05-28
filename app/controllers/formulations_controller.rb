class FormulationsController < ApplicationController
  def index
    render json: Formulation.all.includes(:ingredients)
  end
end
