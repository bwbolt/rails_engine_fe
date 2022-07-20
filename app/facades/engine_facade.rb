class EngineFacade
  def self.create_merchants
    json = EngineService.get_merchants
    merchants = json[:data].map { |data| Merchant.new(data) }
  end

  def self.create_single_merchant(id)
    json = EngineService.get_single_merchant(id)
    merchant = Merchant.new(json[:data])
  end

  def self.create_single_item(id)
    json = EngineService.get_single_item(id)
    item = Item.new(json[:data])
  end

  def self.create_merchants_items(id)
    json = EngineService.get_merchants_items(id)
    items = json[:data].map { |data| Item.new(data) }
  end
end
