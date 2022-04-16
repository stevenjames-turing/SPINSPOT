require 'rails_helper'

RSpec.describe TldrFacade, :vcr do 
  context 'class methods' do
    context '#advanced_article_summary(article_url)' do 
      before(:each) do 
        @articles = MediastackFacade.left_bias_keyword_search("Elon")
        @advanced_summary = TldrFacade.advanced_article_summary(@articles.first.url, @articles.first.bias, @articles.first.source)
      end

      it 'creates a Tldr object for article passed as argument' do 
        expect(@advanced_summary).to be_a Tldr
      end

      
    end
  end
end