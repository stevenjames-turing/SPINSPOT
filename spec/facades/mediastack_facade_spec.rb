require 'rails_helper'

RSpec.describe MediastackFacade, :vcr do
  context 'class methods' do
    context '::keyword_search(keyword, left_bias_string)' do
      before(:each) do
        @left_bias = MediastackFacade.keyword_search("Elon", "left_bias")
      end
      it 'creates and returns an Article object' do
        expect(@left_bias).to be_a Article 
      end
    end

    context '::keyword_search(keyword, center_bias_string)' do
      before(:each) do
        @center_bias = MediastackFacade.keyword_search("Elon", "center_bias")
      end
     it 'creates and returns an Article object' do
        expect(@center_bias).to be_a Article 
      end
    end

    context '::keyword_search(keyword, right_bias_string)' do
      before(:each) do
        @right_bias = MediastackFacade.keyword_search("Elon", "right_bias")
      end
      it 'creates and returns an Article object' do
        expect(@right_bias).to be_a Article 
      end
    end
  end
end
