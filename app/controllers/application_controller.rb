class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :authorize

    def authorize 
        return render json: {error: "not authorized"}, status: :unauthorized unless session.include? :client_id
    end

end
