require 'rails_helper'

RSpec.describe MediastackService, :vcr do

  context "keyword_search(keyword, bias_string)" do
    it 'can find articles from sources with left bias by keyword' do
      articles = MediastackService.keyword_search("elon musk", "left_bias")

      expect(articles).to be_a Hash
      articles[:data].each do |article|
        expect(article[:source]).to include("ABC") | include("CNN") | include("Guardian") | include("nytimes") | include("Times")
      end
    end

    it 'can find articles from sources with center bias by keyword' do
      articles = MediastackService.keyword_search("elon musk", "center_bias")

      expect(articles).to be_a Hash
      articles[:data].each do |article|
        expect(article[:source]).to include("Bloomberg") | include("CNBC") | include("Cnbc") | include("Forbes") | include("NPR") | include("Reuters")
      end
    end

    it 'can find articles from sources with right bias by keyword' do
      articles = MediastackService.keyword_search("elon musk", "right_bias")

      expect(articles).to be_a Hash
      articles[:data].each do |article|
        expect(article[:source]).to include("Fox") | include("FOX") | include("Breitbart")
      end
    end
    
    it 'returns blank array of data if bias is not specified' do 
      articles = MediastackService.keyword_search("elon musk", "")
  
      expect(articles).to be_a Hash
      expect(articles[:data]).to eq([])
    end
  end
end
