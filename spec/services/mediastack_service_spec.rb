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

  context '#center_bias_keyword_search(keyword)' do
    it 'can find articles from sources with center bias by keyword' do
      article_url = "http://api.mediastack.com/v1/news"
      articles = MediastackService.center_bias_keyword_search("elon musk")

      expect(articles).to be_a Hash
      articles[:data].each do |article|
        expect(article[:source]).to include("Bloomberg") | include("CNBC") | include("Cnbc") | include("Forbes") | include("NPR") | include("Reuters")
      end
    end
  end

  context '#right_bias_keyword_searchright_bias_keyword_search(keyword)' do
    it 'can find articles from sources with center bias by keyword' do
      article_url = "http://api.mediastack.com/v1/news"
      articles = MediastackService.right_bias_keyword_search("elon musk")

      expect(articles).to be_a Hash
      articles[:data].each do |article|
        expect(article[:source]).to include("Fox") | include("FOX") | include("Breitbart")
      end
    end
  end
end
