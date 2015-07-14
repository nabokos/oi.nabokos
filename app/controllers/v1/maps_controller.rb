module V1
  class MapsController < BaseController
    def index
      maps = Map.all
      render json: maps
    end

    def show
      begin
        map = Map.find(params[:id])
        render json: map
      rescue ActiveRecord::RecordNotFound
        render json: {}, status: :not_found
      end
    end
  end
end
