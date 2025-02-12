class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id,:price,:is_best_seller], methods: [:summary] 
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese
      render json: cheese
    else
      render json: {error: "Cheese not Found!!!"}, status: :not_found
    end
  end

end
