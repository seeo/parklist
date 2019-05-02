class ParksController < ApplicationController

    def new
    end

    def create
    @park = Park.new(park_params)

      if @park.save
        render plain: "hello, saved"
        #redirect '/'
      else
      @park.errors.messages[:name]
        render plain: @park.errors.inspect
        # @parks = Park.all
        render 'new'
      end
    end

    def show
      @park = Park.find(params[:id])
    end

    private

      def park_params
        params.require(:park).permit(:name, :description)
      end

end
