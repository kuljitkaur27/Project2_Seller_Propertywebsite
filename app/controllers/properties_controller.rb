class PropertiesController < ApplicationController
  def index
    @properties = Property.all
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
    property = Property.find params[:id]
    Property.update property_params
    redirect_to property
  end

  def show
    @property = Property.find params[:id]
  end

  def destroy
    property = Property.find params[:id]
    Property.destroy
    redirect_to property_path
  end
end

private
def property_params
  params.require(:property).permit(:location, :price, :construction_year, :property_type, :bedrooms, :bathrooms, :car_spaces, :landsize, :bonus_features, :status, :main_image, :image1, :image2, :image3, :seller_id)
end
