class BirdsController < ApplicationController
    # get birds
    def index
        birds = Bird.all
        render json: birds
    end
    # get a specific bird
    def show
        bird = Bird.find_by(id: params[:id])
        if bird 
            render json: bird, status: :ok
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
