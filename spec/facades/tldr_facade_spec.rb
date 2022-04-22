require 'rails_helper'

RSpec.describe TldrFacade, :vcr do
  context 'class methods' do
    context '#advanced_article_summary(article_url)' do
      it 'creates a Tldr object for article passed as argument' do
        article = MediastackFacade.keyword_search("Elon", "left_bias")
        advanced_summary = TldrFacade.advanced_article_summary(article.url, article.bias, article.source)

        expect(advanced_summary).to be_a Tldr
      end

      it 'creates a Tldr object for article passed as argument even if search does not return any articles' do
        article = MediastackFacade.keyword_search("dkdignglsldigngalsldi", "left_bias")
        advanced_summary = TldrFacade.advanced_article_summary(article.url, article.bias, article.source)

        expect(advanced_summary).to be_a Tldr
        expect(advanced_summary.title).to eq("Article Not Found!")
      end
      
      
    end
    
    context '#standard_article_summary(article_url)' do
      it 'creates a Tldr object for article passed as argument' do
        article = MediastackFacade.keyword_search("Elon", "left_bias")
        standard_summary = TldrFacade.standard_article_summary(article.url, article.bias, article.source)
        
        expect(standard_summary).to be_a Tldr
      end

      it 'creates a Tldr object for article passed as argument even if search does not return any articles' do
        article = MediastackFacade.keyword_search("dkdignglsldigngalsldi", "left_bias")
        standard_summary = TldrFacade.standard_article_summary(article.url, article.bias, article.source)
  
        expect(standard_summary).to be_a Tldr
        expect(standard_summary.title).to eq("Article Not Found!")
      end
    end
  end
end
