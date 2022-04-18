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

      it 'can create multiple Tldr for all articles' do 
        objects = @articles.map do |article| 
          TldrFacade.advanced_article_summary(article.url, article.bias, article.source)
        end

        expect(objects.first).to be_a Tldr
        expect(objects.count).to eq(@articles.count)
      end
    end

    context '#standard_article_summary(article_url)' do 
      before(:each) do 
        @articles = MediastackFacade.left_bias_keyword_search("Elon")
        @standard_summary = TldrFacade.standard_article_summary(@articles.first.url, @articles.first.bias, @articles.first.source)
      end

      it 'creates a Tldr object for article passed as argument' do 
        expect(@standard_summary).to be_a Tldr
      end

      it 'can create multiple Tldr for all articles' do 
        objects = @articles.map do |article| 
          TldrFacade.standard_article_summary(article.url, article.bias, article.source)
        end

        expect(objects.first).to be_a Tldr
        expect(objects.count).to eq(@articles.count)
      end
    end
  end
end