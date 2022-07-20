class Item
  attr_reader :name, :id, :description, :unit_price

  def initialize(info)
    @name = info[:attributes][:name]
    @description = info[:attributes][:description]
    @unit_price = info[:attributes][:unit_price]
    @id = info[:id]
  end
end
