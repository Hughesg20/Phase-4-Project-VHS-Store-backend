class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:destroy, :create]

    def create
        client = Client.find_by(username: params[:username])
        session[:client_id] = client.id
        render json: client
      end

      def destroy
        session.delete :client_id
        head :no_content
      end
end
