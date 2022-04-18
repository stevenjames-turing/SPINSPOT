require 'rails_helper'

RSpec.describe Tldr do

  before(:each) do
    @tldr_data = {
                    summary: ["The pizza chain Papa John’s adopted a poison pill in July 2018 in a rare instance of a company trying to block its founder from taking over.",
                              "The dispute ended with a settlement in March 2019.",
                              "In Twitter’s case, the pill would flood the market with new shares if Mr. Musk, or any other individual or group working together, bought 15 percent or more of Twitter’s shares.",
                              "Mr. Musk currently owns more than 9 percent of the company’s stock.",
                              "But even if it has hit that ceiling, she said, a company has other options to make the purchase unattractive.",
                              "Boards often implement poison pills on a temporary basis so that they can consider their options with more time."],
                    article_text: "The pizza chain Papa John’s adopted a poison pill in July 2018 in a rare instance of a company....",
                    article_title: "What Is a ‘Poison Pill’ Defense?",
                    article_authors: ["Amanda Holpuch"],
                    article_image: "https://static01.nyt.com/images/2022/04/15/business/15xp-poisonpill1/15xp-poisonpill1-facebookJumbo.jpg",
                    article_pub_date: "Apr 15, 2022",
                    article_url: "https://www.nytimes.com/2022/04/15/business/twitter-poison-pill-explainer.html",
                    article_html: "<div><p class=\"css-g5piaz evys1bk0\">The pizza chain Papa John&#8217;s adopted a....",
                    article_abstract: nil
                  }
  end

  it 'will create an Article object' do
    tldr = Tldr.new(@tldr_data)
    expect(tldr.summary).to eq(["The pizza chain Papa John’s adopted a poison pill in July 2018 in a rare instance of a company trying to block its founder from taking over.",
              "The dispute ended with a settlement in March 2019.",
              "In Twitter’s case, the pill would flood the market with new shares if Mr. Musk, or any other individual or group working together, bought 15 percent or more of Twitter’s shares.",
              "Mr. Musk currently owns more than 9 percent of the company’s stock.",
              "But even if it has hit that ceiling, she said, a company has other options to make the purchase unattractive.",
              "Boards often implement poison pills on a temporary basis so that they can consider their options with more time."])

  end
end
