class RentalsController < ApplicationController
    def index 
        rentals = Rental.all
        render json: rentals, status: :ok
    end
    
    def show
        rentals = Rental.find(params[:id])
        render json: rentals, status: :ok
    end

    def created
        rentals = Rental.create!(rentals_params)
        render json: rentals, status: :created
    end

    def update 
        rental = Rental.find(params[:id])
        rental.update!(rental_params)
        render json: rental, status: :ok
    end 

    def destroy
        rentals = Rental.find(params[:id])
        rentals.destroy
        head :no_content

    end
end
