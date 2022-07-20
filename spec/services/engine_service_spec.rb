require 'rails_helper'

RSpec.describe 'EngineService', :vcr do
  describe 'merchants' do
    it '#get_merchants' do
      parsed_json = EngineService.get_merchants

      expect(parsed_json).to be_a Hash
      expect(parsed_json[:data]).to be_a Array

      merchant = parsed_json[:data].first

      expect(merchant).to include :id
      expect(merchant[:attributes]).to include :name
    end
    it '#get_single_merchant' do
      parsed_json = EngineService.get_single_merchant(1)

      expect(parsed_json).to be_a Hash

      merchant = parsed_json[:data]

      expect(merchant).to include :id
      expect(merchant[:attributes]).to include :name
    end
  end

  describe 'items' do
    it '#get_merchants_items' do
      parsed_json = EngineService.get_merchants_items(1)

      expect(parsed_json).to be_a Hash

      item = parsed_json[:data].first

      expect(item).to include :id
      expect(item[:attributes]).to include :name
      expect(item[:attributes]).to include :description
      expect(item[:attributes]).to include :unit_price
    end

    it '#get_items' do
      parsed_json = EngineService.get_items

      expect(parsed_json).to be_a Hash

      item = parsed_json[:data].first

      expect(item).to include :id
      expect(item[:attributes]).to include :name
      expect(item[:attributes]).to include :description
      expect(item[:attributes]).to include :unit_price
    end

    it '#get_single_item' do
      parsed_json = EngineService.get_single_item(1)

      expect(parsed_json).to be_a Hash

      item = parsed_json[:data]

      expect(item).to include :id
      expect(item[:attributes]).to include :name
      expect(item[:attributes]).to include :description
      expect(item[:attributes]).to include :unit_price
    end
  end
end
