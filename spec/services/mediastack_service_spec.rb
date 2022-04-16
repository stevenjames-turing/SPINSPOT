require 'rails_helper'

RSpec.describe MediastackService, :vcr do
  context '#keyword_search' do
    it 'can find articles by keyword' do
      article_url = "http://api.mediastack.com/v1/news"
      brooklyn = MediastackService.search_keyword("brooklyn")

      expect(brooklyn).to be_a Hash
      expect(brooklyn[:data][0][:url]).to eq("https://www.independent.co.uk/tv/culture/brooklyn-beckham-cooking-tv-show-b2012036.html")
    end
  end
end
