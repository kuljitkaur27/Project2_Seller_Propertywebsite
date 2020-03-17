class SellersController < ApplicationController
  def index
    @sellers = Seller.all
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
    seller = Seller.find params[:id]
    seller.update seller_params
    redirect_to seller
  end

  def show
    @seller = Seller.find params[:id]
  end

  def destroy
    @seller = Seller.find params[:id]
    @seller.destroy
    redirect_to sellers_path
  end
end

private
 def seller_params
   params.require(:seller).permit( :name, :phone_no, :email, :password_digest)
 end
