class FormulationsController < ApplicationController
  def index
    render json: Formulation.all
  end
end
