class Api::V1::NewsController < ApplicationController

  def index
    @left_bias_articles = MediastackFacade.keyword_search(params[:keyword], "left_bias")
    @center_bias_articles = MediastackFacade.keyword_search(params[:keyword], "center_bias")
    @right_bias_articles = MediastackFacade.keyword_search(params[:keyword], "right_bias")
    
    @left_bias_tldr = @left_bias_articles.map do |article|
      TldrFacade.advanced_article_summary(article.url, article.bias, article.source)
    end
    @center_bias_tldr = @center_bias_articles.map do |article|
      TldrFacade.advanced_article_summary(article.url, article.bias, article.source)
    end
    @right_bias_tldr = @right_bias_articles.map do |article|
      TldrFacade.advanced_article_summary(article.url, article.bias, article.source)
    end

    json_response(ArticleSummarySerializer.article_summary_json(params[:keyword], @left_bias_tldr[0], @center_bias_tldr[0], @right_bias_tldr[0]))
  end
end
