class CartsController < ApplicationController
  before_action :set_cart

  def show
  end

  def edit
  end

  def update
    if @cart.update(cart_params)
      redirect_to @cart, notice: 'Cart was successfully updated.'
    else
      render :edit
    end
  end


  private

  def set_cart
    @cart = current_user.active_cart
  end

  def cart_params
    params.require(:cart).permit(:user, :shipping_name, :shipping_email)
  end

end
