class MerchantsController < ApplicationController
  def index
    @merchants = EngineFacade.create_merchants
  end
end
