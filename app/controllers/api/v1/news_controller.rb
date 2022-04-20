class Api::V1::NewsController < ApplicationController

  def index
    # Check keyword param to ensure it's not missing or an empty string
    if params[:keyword].blank?
      json_response({ "error": {"message" => 'invalid parameters'} }, :bad_request)
    else
      get_tldr_summaries(params[:keyword])
      # Passes Tldr poros into Serializer to render JSON response to match JSON contract with Front-End client
      json_response(ArticleSummarySerializer.article_summary_json(params[:keyword], @left_bias_tldr, @center_bias_tldr, @right_bias_tldr))
    end
  end
  
  private 
  
    def get_tldr_summaries(keyword)
      # Passes keyword param to the Mediastack Facade to create an Article poro for each bias
      left_bias_article = MediastackFacade.keyword_search(params[:keyword], "left_bias")
      center_bias_article = MediastackFacade.keyword_search(params[:keyword], "center_bias")
      right_bias_article = MediastackFacade.keyword_search(params[:keyword], "right_bias")
      
      # Uses Article poro created above to pass data to the Tldr Facade to create Tldr poro for each bias. 
      @left_bias_tldr = TldrFacade.advanced_article_summary(left_bias_article.url, left_bias_article.bias, left_bias_article.source)
      @center_bias_tldr = TldrFacade.advanced_article_summary(center_bias_article.url, center_bias_article.bias, center_bias_article.source)
      @right_bias_tldr = TldrFacade.advanced_article_summary(right_bias_article.url, right_bias_article.bias, right_bias_article.source)
    end
end
