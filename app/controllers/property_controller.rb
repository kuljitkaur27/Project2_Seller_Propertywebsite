class PropertyController < ApplicationController
  def index
    @propertys = Property.all
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
    redirect_to propertys_path
  end
end
