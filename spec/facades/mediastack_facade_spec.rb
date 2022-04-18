require 'rails_helper'

RSpec.describe MediastackFacade, :vcr do
  context 'class methods' do
    context '#left_bias_keyword_search(keyword)' do
      it 'creates Article object with attributes' do
        left_bias = MediastackFacade.left_bias_keyword_search("Elon")
        expect(left_bias).to be_a Article
        expect(left_bias.title).to_not be_nil
        expect(left_bias.url).to_not be_nil
        expect(left_bias.source).to_not be_nil
        expect(left_bias.photo_url).to_not be_nil
        expect(left_bias.published_at).to_not be_nil
      end
    end

    context '#center_bias_keyword_search(keyword)' do
      it 'creates Article object with attributes' do
        center_bias = MediastackFacade.center_bias_keyword_search("Elon")
        expect(center_bias).to be_a Article
        expect(center_bias).to be_a Article
        expect(center_bias.title).to_not be_nil
        expect(center_bias.url).to_not be_nil
        expect(center_bias.source).to_not be_nil
        expect(center_bias.photo_url).to_not be_nil
        expect(center_bias.published_at).to_not be_nil
      end
    end
  end

  context '#right_bias_keyword_search(keyword)' do
    it 'creates Article objects' do
      right_bias = MediastackFacade.right_bias_keyword_search("Elon")
      expect(right_bias).to be_a Article
      expect(right_bias.title).to_not be_nil
      expect(right_bias.url).to_not be_nil
      expect(right_bias.source).to_not be_nil
      expect(right_bias.photo_url).to_not be_nil
      expect(right_bias.published_at).to_not be_nil
    end
  end
end
