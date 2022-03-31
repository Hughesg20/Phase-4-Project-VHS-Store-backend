class SessionsController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            render json: user, status:ok
        else
            render json {error: "invalid password or username"}, status: :unprocessable_entity
        end
    end
end
