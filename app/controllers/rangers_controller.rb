class RangersController < ApplicationController

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
    @parks = Park.all
  end

  def create
    @ranger = Ranger.new(ranger_params)

    @ranger.save
    redirect_to @ranger
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @ranger = Ranger.find(params[:id])

    if params[:park_id].to_i != @ranger.park.id
      # do something
    end
  end

  private

    def ranger_params
      params.require(:ranger).permit(:name, :park_id)
    end
end
