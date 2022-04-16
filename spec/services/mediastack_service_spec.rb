require 'rails_helper'

RSpec.describe MediastackService, :vcr do

  context '#left_bias_keyword_search(keyword)' do
    it 'can find articles from sources with left bias by keyword' do
      article_url = "http://api.mediastack.com/v1/news"
      articles = MediastackService.left_bias_keyword_search("elon musk")

      expect(articles).to be_a Hash
      articles[:data].each do |article|
        expect(article[:source]).to include("ABC") | include("CNN") | include("Guardian") | include("nytimes") | include("Times")
      end
    end
  end
end
