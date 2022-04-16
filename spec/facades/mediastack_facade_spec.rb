require 'rails_helper'

RSpec.describe MediastackFacade, :vcr do 
  context 'class methods' do
    context '#left_bias_keyword_search(keyword)' do 
      before(:each) do 
        @left_bias = MediastackFacade.left_bias_keyword_search("Elon")
      end
      it 'returns an array of articles from left bias source' do 
        expect(@left_bias).to be_an Array
      end
      it 'creates Article objects' do 
        expect(@left_bias.first).to be_a Article
      end
    end

    context '#center_bias_keyword_search(keyword)' do 
      before(:each) do 
        @center_bias = MediastackFacade.center_bias_keyword_search("Elon")
      end
      it 'returns an array of articles from left bias source' do 
        expect(@center_bias).to be_an Array
      end
      it 'creates Article objects' do 
        expect(@center_bias.first).to be_a Article
      end
    end

    context '#right_bias_keyword_search(keyword)' do 
      before(:each) do 
        @right_bias = MediastackFacade.right_bias_keyword_search("Elon")
      end
      it 'returns an array of articles from left bias source' do 
        expect(@right_bias).to be_an Array
      end
      it 'creates Article objects' do 
        expect(@right_bias.first).to be_a Article
      end
    end
  end
end