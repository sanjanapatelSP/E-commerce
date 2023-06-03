class AddcartsController < ApplicationController
  def index
    @addcart = current_user.addcarts.first.cart_items
  end

  def addproduct
  @cartitems = current_user.addcarts.first.cart_items.new(product_id:params[:id])
  @cartitems.save
  redirect_to addcarts_path
  end
    
  def removeproduct
  @cartitems =CartItem.find(params[:id])
 @cartitems.destroy
 redirect_to addcarts_path
end
end
