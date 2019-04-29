class ParksController < ApplicationController

    def index
    # test to see whether we are at /parks/:id/rangers or /rangers
      if params.has_key?(:park_id)
        # get all the rangers in a specific park
        @rangers = Ranger.where(park_id: params[:park_id] )
      else
        # get all rangers
        @rangers = Ranger.all
      end
    end

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
