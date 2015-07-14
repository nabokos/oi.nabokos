module V1
  class MapsController < BaseController
    def index
      maps = Map.all
      render json: maps
    end
  end
end
