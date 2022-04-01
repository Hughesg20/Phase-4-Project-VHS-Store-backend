class ClientsController < ApplicationController
   before_action :authorize
   skip_before_action :authorize, only: [:create]
   
    def index 
        clients = Client.all
        render json: clients, status: :ok
    end
    
    def show
        client = Client.find_by(id: session[:user_id])
        if client
          render json: client
        else
          render json: { error: "Not authorized" }, status: :unauthorized
        end
      end

    def create
        client = Client.create!(client_params)
        render json: client, status: :created
    end

    def update 
        client = Client.find(params[:id])
        client.update!(client_params)
        render json: client, status: :ok
    end 

    def destroy
        client = Client.find(params[:id])
        client.destroy
        head :no_content

    end

    private

    def client_params
        params.permit(:first_name,:middle_name, :last_name, :email, :age, :username, :password)
    end


end
