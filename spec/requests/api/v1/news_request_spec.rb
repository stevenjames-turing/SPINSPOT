require 'rails_helper'

describe 'News API', :vcr do
  context 'news#index' do
    it 'sends a hash of Tldr objects' do
      
      get '/api/v1/news?keyword=Elon musk'
      
      expect(response).to be_successful

      tldrs = JSON.parse(response.body, symbolize_names: true)

      expect(tldrs).to be_an Array

      expect(tldrs.count).to eq(3)
      
      # THERE WILL NEED TO BE MORE TESTS HERE WHEN WE GET THE SERIALIZER SET UP
      # these tests above will fail when we set up the serializer
      
      
    end
  end
end 