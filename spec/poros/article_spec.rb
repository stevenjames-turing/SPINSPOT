require 'rails_helper'

RSpec.describe Article do 

  before(:each) do 
    @article_data = {
                      author: "Amanda Holpuch",
                      title: "What Is a ‘Poison Pill’ Defense?",
                      description: "Twitter has unveiled its plan to fight Elon Musk’s bid for the company. It’s a well-worn tactic to fend off corporate raiders and hostile takeovers.",
                      url: "https://www.nytimes.com/2022/04/15/business/twitter-poison-pill-explainer.html",
                      source: "nytimes",
                      image: "https://static01.nyt.com/images/2022/04/15/business/15xp-poisonpill1/15xp-poisonpill1-moth.jpg",
                      category: "general",
                      language: "en",
                      country: "us",
                      published_at: "2022-04-15T20:16:16+00:00"
                    }
  end

  it 'will create an Article object' do 
    article = Article.new(@article_data, "left_bias")

    expect(article.bias).to eq("left_bias")
    expect(article.title).to eq("What Is a ‘Poison Pill’ Defense?")
    expect(article.url).to eq("https://www.nytimes.com/2022/04/15/business/twitter-poison-pill-explainer.html")
    expect(article.source).to eq("nytimes")
    expect(article.image).to eq("https://static01.nyt.com/images/2022/04/15/business/15xp-poisonpill1/15xp-poisonpill1-moth.jpg")
    expect(article.published_at).to eq("2022-04-15T20:16:16+00:00")
  end
end