require 'rails_helper'

RSpec.describe Beer, type: :model do
  context 'when i create Sculpin' do
    it 'should be called Sculpin and belong to Ballast Point brewer' do
      beer = Beer.create(name: 'Sculpin', brewer: 'Ballast Point')
      expect(beer.name).to eq('Sculpin')
      expect(beer.brewer).to eq('Ballast Point')
    end
  end

  context 'austins beer should be rated highest' do
    it 'checks the highest rated beer to make sure it belongs to austin' do
      Beer.create(name: 'Sculpin', brewer: 'Ballast Point', rating: 90)
      Beer.create(name: 'Austin Brew', brewer: 'Austin', rating: 100)
      Beer.create(name: 'Coors Light', brewer: 'Coors', rating: 75)
      expect(Beer.order(rating: :desc).limit(1).first.brewer).to eq('Austin')
    end
  end
end
