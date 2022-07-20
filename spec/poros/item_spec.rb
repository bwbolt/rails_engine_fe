require 'rails_helper'

RSpec.describe Item do
  it 'populates a merchant from JSON response' do
    data = { id: '2484', type: 'item',
             attributes: { name: 'Pencil', description: 'Writes things.', unit_price: 500, merchant_id: 101 } }

    item = Item.new(data)

    expect(item.id).to eq('2484')
    expect(item.name).to eq('Pencil')
    expect(item.description).to eq('Writes things.')
  end
end
