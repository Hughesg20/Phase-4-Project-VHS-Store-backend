class VhsTapesController < ApplicationController
    def index 
        vhsTapes = VhsTape.all
        render json: vhsTapes, status: :ok
    end
    
    def show
        vhsTape = VhsTape.find(params[:id])
        render json: vhsTape, status: :ok
    end

    def created
        vhsTape = VhsTape.create!(vhsTape_params)
        render json: vhsTape, status: :created
    end

    def update 
        vhsTape = VhsTape.find(params[:id])
        vhsTape.update!(vhsTape_params)
        render json: vhsTape, status: :ok
    end 

    def destroy
        vhsTape = VhsTape.find(params[:id])
        vhsTape.destroy
        head :no_content

    end
end
