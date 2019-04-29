class ParkController < ApplicationController
    def new
    end

    def create
    @park = Park.new(park_params)

    @park.save
    redirect_to @park
    end

    def show
      @park = Park.find(params[:id])
    end

  private

    def park_params
      params.require(:park).permit(:name, :description)
    end

end
