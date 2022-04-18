require 'rails_helper'

describe 'News API', :vcr do
  context 'news#index' do
    it 'sends a hash of Tldr objects' do

      get '/api/v1/news?keyword=Elon Musk'

      expect(response).to be_successful

      tldrs = JSON.parse(response.body, symbolize_names: true)

      expect(tldrs).to be_a Hash
      expect(tldrs[:topic]).to eq('Elon Musk')
      expect(tldrs[:type]).to eq('articles')
      expect(tldrqs[:data].count).to eq(3)

      expect(tldrqs[:data][:left_article]).to have_key[:title]
      expect(tldrqs[:data][:left_article][:title]).to be a String
      expect(tldrqs[:data][:left_article]).to have_key[:summary]
      expect(tldrqs[:data][:left_article][:summary]).to be a String
      expect(tldrqs[:data][:left_article]).to have_key[:source]
      expect(tldrqs[:data][:left_article][:source]).to be a String
      expect(tldrqs[:data][:left_article]).to have_key[:url]
      expect(tldrqs[:data][:left_article][:url]).to be a String
      expect(tldrqs[:data][:left_article]).to have_key[:photo_url]
      expect(tldrqs[:data][:left_article][:poto]).to be a String

      expect(tldrqs[:data][:center_article]).to have_key[:title]
      expect(tldrqs[:data][:center_article][:title]).to be a String
      expect(tldrqs[:data][:center_article]).to have_key[:summary]
      expect(tldrqs[:data][:center_article][:summary]).to be a String
      expect(tldrqs[:data][:center_article]).to have_key[:source]
      expect(tldrqs[:data][:center_article][:source]).to be a String
      expect(tldrqs[:data][:center_article]).to have_key[:url]
      expect(tldrqs[:data][:center_article][:url]).to be a String
      expect(tldrqs[:data][:center_article]).to have_key[:photo_url]
      expect(tldrqs[:data][:center_article][:poto]).to be a String

      expect(tldrqs[:data][:right_article]).to have_key[:title]
      expect(tldrqs[:data][:right_article][:title]).to be a String
      expect(tldrqs[:data][:right_article]).to have_key[:summary]
      expect(tldrqs[:data][:right_article][:summary]).to be a String
      expect(tldrqs[:data][:right_article]).to have_key[:source]
      expect(tldrqs[:data][:right_article][:source]).to be a String
      expect(tldrqs[:data][:right_article]).to have_key[:url]
      expect(tldrqs[:data][:right_article][:url]).to be a String
      expect(tldrqs[:data][:right_article]).to have_key[:photo_url]
      expect(tldrqs[:data][:right_article][:poto]).to be a String
    end
  end

  # Need to add sad path testing
  # THERE WILL NEED TO BE MORE TESTS HERE WHEN WE GET THE SERIALIZER SET UP
  # these tests above will fail when we set up the serializer


end
