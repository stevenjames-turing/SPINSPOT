class Api::V1::NewsController < ApplicationController

  def index
    @left_bias_articles = MediastackFacade.left_bias_keyword_search(params[:keyword])
    @center_bias_articles = MediastackFacade.center_bias_keyword_search(params[:keyword])
    @right_bias_articles = MediastackFacade.right_bias_keyword_search(params[:keyword])

    @left_bias_tldr = @left_bias_articles.map do |article| 
      TldrFacade.standard_article_summary(article.url, article.bias, article.source)
    end 
    @center_bias_tldr = @center_bias_articles.map do |article| 
      TldrFacade.standard_article_summary(article.url, article.bias, article.source)
    end 
    @right_bias_tldr = @right_bias_articles.map do |article| 
      TldrFacade.standard_article_summary(article.url, article.bias, article.source)
    end 

    json_response(NewsSerializer.new([@left_bias_tldr, @center_bias_tldr, @right_bias_tldr]))
  end

  
end