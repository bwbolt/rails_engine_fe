require 'rails_helper'

RSpec.describe 'EngineFacade', :vcr do
  it '#create_merchants' do
    merchants = EngineFacade.create_merchants

    expect(merchants).to be_a Array
    expect(merchants).to be_all Merchant
  end

  it '#create_items' do
    items = EngineFacade.create_items

    expect(items).to be_a Array
    expect(items).to be_all Item
  end

  it '#create_single_merchant' do
    merchant = EngineFacade.create_single_merchant(1)

    expect(merchant).to be_a Merchant
  end

  it '#create_single_item' do
    item = EngineFacade.create_single_item(1)

    expect(item).to be_a Item
  end

  it '#create_merchants_items' do
    items = EngineFacade.create_merchants_items(1)

    expect(items).to be_a Array
    expect(items).to be_all Item
  end
end
