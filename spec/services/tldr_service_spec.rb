require 'rails_helper'

RSpec.describe TldrService do 
  context '#advanced_article_summary(article_url)' do 
    it 'returns a summarized article hash' do 
      article_url = 'https://techcrunch.com/2019/08/12/verizon-is-selling-tumblr-to-wordpress-parent-automattic/'
      tldr = TldrService.advanced_article_summary(article_url)

      expect(tldr).to be_a Hash

      expect(tldr[:summary]).to be_an Array
      expect(tldr[:article_text]).to be_an String
      expect(tldr[:article_image]).to be_an String
      expect(tldr[:article_pub_date]).to be_an String
      expect(tldr[:article_url]).to be_an String
    end
  end
  context '#standard_article_summary(article_url)' do 
    it 'returns a summarized article hash' do 
      article_url = 'https://techcrunch.com/2019/08/12/verizon-is-selling-tumblr-to-wordpress-parent-automattic/'
      tldr = TldrService.standard_article_summary(article_url)

      expect(tldr).to be_a Hash

      expect(tldr[:summary]).to be_an Array
      expect(tldr[:article_text]).to be_an String
      expect(tldr[:article_image]).to be_an String
      expect(tldr[:article_pub_date]).to be_an String
      expect(tldr[:article_url]).to be_an String
    end
  end
end