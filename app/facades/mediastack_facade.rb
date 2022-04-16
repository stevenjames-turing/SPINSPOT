class MediastackFacade

  def self.left_bias_keyword_search(keyword)
    json = MediastackService.left_bias_keyword_search(keyword)
    
    @articles = json[:data].map do |article_data|
      Article.new(article_data, "left_bias")
    end
  end
  

end