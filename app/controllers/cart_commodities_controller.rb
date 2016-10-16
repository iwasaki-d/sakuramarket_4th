class CartCommoditiesController < ApplicationController
  before_action :set_cart_commodity, only: [:show, :edit, :update, :destroy]

  def index
    @cart_commodities = CartCommodity.all
  end

  def show
  end

  def create
    @cart_commodity = CartCommodity.new(cart_commodity_params)

    if @cart_commodity.save
      redirect_to :back, notice: '商品をカートに投入しました。'
    else
      redirect_to :back, alert: '商品のカート投入に失敗しました。'
    end
  end

  def update
    if @cart_commodity.update(cart_commodity_params)
      redirect_to :back, notice: '商品をカートに投入しました。'
    else
      redirect_to :back, alert: '商品のカート投入に失敗しました。'
    end
  end

  def destroy
    @cart_commodity.destroy
    redirect_to cart_commodities_url, notice: 'Cart commodity was successfully destroyed.'
  end

  private
    def set_cart_commodity
      @cart_commodity = CartCommodity.find(params[:id])
    end

    def cart_commodity_params
      params.require(:cart_commodity).permit(:cart_id, :commodity_id, :quantity)
    end
end
