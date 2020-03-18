class PropertiesController < ApplicationController
  def index
      # @properties = Property.all
      @properties = Property.where(nil)
      filtering_params(params).each do |key, value|
        @properties = @properties.public_send("filter_by_#{key}", value) if value.present?
      end
  end

  def new
    @property = Property.new
  end

  def create
    property = Property.create property_params
    redirect_to property
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    @property = Property.find params[:id]
    @property.update property_params
    redirect_to property_path
  end

  def show
    @property = Property.find params[:id]
  end

  def destroy
    property = Property.find params[:id]
    property.destroy
    redirect_to properties_path
  end

private
def property_params
  params.require(:property).permit(:location, :price, :construction_year, :property_type, :bedrooms, :bathrooms, :car_spaces, :landsize, :bonus_features, :status, :main_image, :image1, :image2, :image3, :seller_id)
end
def filtering_params(params)
  params.slice(:location, :price, :property_type, :bedrooms, :bathrooms, :car_spaces, :landsize,)
end
end
