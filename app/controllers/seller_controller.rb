class SellerController < ApplicationController
  def index
    @seller = Seller.all
  end

  def new
    @seller = Seller.new
  end

  def create
   seller  = Seller.create seller_params
   redirect_to seller
  end

  def edit
    @seller = Seller.find params[:id]
  end

  def update
    @seller = Seller.find params[:id]
    Seller.update seller_params
    redirect_to seller
  end

  def show
    @seller = Seller.find params[:id]
  end

  def destroy
    seller = Seller.find params[:id]
    Seller.destroy
    reditect_to seller_path
  end
end
