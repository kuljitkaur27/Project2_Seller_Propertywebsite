class PagesController < ApplicationController
    def search
      # params.require(:property).permit(:location, :price, :property_type, :bedrooms, :bathrooms, :car_spaces, :landsize, )
      # if params[:location]
      #   @property = Property.where('location LIKE ?', "%#{params[:location]}%")
      # else
      #   @property = Property.all
      # end
    end

    def index

    end

    def list
      @properties = Property.all
    end

end
