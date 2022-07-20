class ItemsController < ApplicationController
  def show
    @item = EngineFacade.create_single_item(params[:id])
  end

  def index
    @items = EngineFacade.create_items
  end
end
