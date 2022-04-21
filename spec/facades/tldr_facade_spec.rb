require 'rails_helper'

RSpec.describe TldrFacade, :vcr do
  context 'class methods' do
    context '#advanced_article_summary(article_url)' do
      before(:each) do
        @article = MediastackFacade.keyword_search("Elon", "left_bias")
        @advanced_summary = TldrFacade.advanced_article_summary(@article.url, @article.bias, @article.source)
      end

      it 'creates a Tldr object for article passed as argument' do
        expect(@advanced_summary).to be_a Tldr
      end
    end

    context '#standard_article_summary(article_url)' do
      before(:each) do
        @article = MediastackFacade.keyword_search("Elon", "left_bias")
        @standard_summary = TldrFacade.standard_article_summary(@article.url, @article.bias, @article.source)
      end

      it 'creates a Tldr object for article passed as argument' do
        expect(@standard_summary).to be_a Tldr
      end
    end
  end
end
