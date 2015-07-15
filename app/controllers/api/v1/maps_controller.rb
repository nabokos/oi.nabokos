module Api::V1
  class MapsController < BaseController
    def index
      maps = Map.all
      render json: maps
    end

    def show
      map = Map.find(params[:id])
      respond_to do |format|
        format.sokoban { render text: "#{map.field}\nTitle: #{map.name}\nAuthor: #{map.author}" }
        format.any { render json: map }
      end
    end

    rescue_from ActiveRecord::RecordNotFound do
      render json: {}, status: :not_found
    end
  end
end
