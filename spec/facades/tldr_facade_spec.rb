require 'rails_helper'

RSpec.describe TldrFacade, :vcr do
  context 'class methods' do
    context '#advanced_article_summary(article_url)' do
      before(:each) do
        @articles = MediastackFacade.left_bias_keyword_search("Elon")
        @advanced_summary = TldrFacade.advanced_article_summary(@articles.url)
      end

      it 'creates a Tldr object for article passed as argument' do
        expect(@advanced_summary).to be_a Tldr
        expect(@advanced_summary.summary).to_not be_nil
      end
    end

    context '#standard_article_summary(article_url)' do
      before(:each) do
        @articles = MediastackFacade.left_bias_keyword_search("Elon")
        @standard_summary = TldrFacade.standard_article_summary(@articles.url)
      end

      it 'creates a Tldr object for article passed as argument' do
        expect(@standard_summary).to be_a Tldr
        expect(@standard_summary.summary).to_not be_nil
      end

    end
  end
end
