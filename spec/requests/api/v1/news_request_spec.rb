require 'rails_helper'

describe 'News API', :vcr do
  context 'news#index' do
    context 'happy path' do 
      it 'sends a hash of Tldr summaries' do
        get '/api/v1/news?keyword=Elon musk'
        
        expect(response).to be_successful
    
        json = JSON.parse(response.body, symbolize_names: true)
        
        expect(json).to be_a Hash
        expect(json.keys).to eq([:topic, :type, :data])
        expect(json[:data]).to be_a Hash
        expect(json[:data].keys).to eq([:left_article, :center_article, :right_article])
        expect(json[:topic]).to eq("Elon musk")
      end
    end

    
  end
end 