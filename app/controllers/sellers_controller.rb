class SellersController < ApplicationController
#Index
  def index
    @sellers = Seller.where(nil)
        filtering_params(params).each do |key, value|
          @sellers = @sellers.public_send("filter_by_#{key}", value) if value.present?
        end
  end

#New Seller
  def new
    @seller = Seller.new
  end

#Create Seller
  def create
   seller  = Seller.create seller_params
   redirect_to seller
  end

#Edit Seller
  def edit
    @seller = Seller.find params[:id]
  end

#Update Seller
  def update
    seller = Seller.find params[:id]
    seller.update seller_params
    redirect_to seller
  end

#Show Seller
  def show
    @seller = Seller.find params[:id]
  end

#Delete Seller
  def destroy
    seller = Seller.find params[:id]
    seller.destroy
    redirect_to sellers_path
  end

#Private Methods
  private
   def seller_params
     params.require(:seller).permit(:name, :phone_no)
   end

#FIltering parameters
   def filtering_params(params)
     params.slice(:user_id)
   end

end
