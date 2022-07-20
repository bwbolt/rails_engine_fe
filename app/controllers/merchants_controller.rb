class MerchantsController < ApplicationController
  def index
    @merchants = EngineFacade.create_merchants
  end

  def show
    @merchant = EngineFacade.create_single_merchant(params[:merchant_id])
    @items = EngineFacade.create_merchants_items(params[:merchant_id])
  end
end
