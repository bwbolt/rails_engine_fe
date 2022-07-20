class ItemsController < ApplicationController
  def index
    @merchant = EngineFacade.create_single_merchant(params[:merchant_id])
    @items = EngineFacade.create_merchants_items(params[:merchant_id])
  end

  def show
    @item = EngineFacade.create_single_item(params[:id])
  end
end
