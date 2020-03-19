class PropertiesController < ApplicationController
#Index
  def index
      # Search
      @properties = Property.where(nil)

      filtering_params(params).each do |key, value|
        @properties = @properties.public_send("filter_by_#{key}", value.capitalize) if value.present?
      end
  end

#New Property
  def new
    @property = Property.new
  end

#Create Property
  def create
    property = Property.create property_params
    redirect_to property
  end

#Edit Property
  def edit
    @property = Property.find params[:id]
  end

#Update Property
  def update
    @property = Property.find params[:id]
    @property.update property_params
    redirect_to property_path
  end

#Show Property
  def show
    @property = Property.find params[:id]
  end

#Delete Property
  def destroy
    property = Property.find params[:id]
    property.destroy
    redirect_to properties_path
  end

private
#Private methods
def property_params
  params.require(:property).permit(:location, :price, :construction_year, :property_type, :bedrooms, :bathrooms, :car_spaces, :landsize, :bonus_features, :status, :main_image, :image1, :image2, :image3, :seller_id)
end
#Filtering Parameters
def filtering_params(params)
  params.slice(:location, :price, :property_type, :bedrooms, :bathrooms, :car_spaces, :landsize, :seller_id)
end

end
