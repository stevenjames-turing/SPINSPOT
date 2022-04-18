class Api::V1::NewsController < ApplicationController

  def index
    keyword = params[:search]

    left_article = MediastackFacade.left_bias_keyword_search(keyword)
    left_tldr = TldrFacade.advanced_article_summary(left_article.url)

    center_article = MediastackFacade.center_bias_keyword_search(keyword)
    center_tldr = TldrFacade.advanced_article_summary(center_article.url)

    right_article = MediastackFacade.right_bias_keyword_search(keyword)
    right_tldr = TldrFacade.advanced_article_summary(right_article.url)

    render json: TopicAndArticlesSerializer.json_topic_and_articles(keyword, left_article, left_tldr, center_article, center_tldr, right_article, right_tldr)
  end
end
