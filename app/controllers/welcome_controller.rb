class WelcomeController < ApplicationController
    def index
        render json: {hello: "babye"} 
    end
end
