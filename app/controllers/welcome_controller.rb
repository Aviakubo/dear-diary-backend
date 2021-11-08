class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Twerkin" }
      end
end
