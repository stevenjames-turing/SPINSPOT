class MediastackFacade

  def self.left_bias_keyword_search(keyword)
    json = MediastackService.left_bias_keyword_search(keyword)
    
    @articles = json[:data].map do |article_data|
      Article.new(article_data, "left_bias")
    end
  end
  
  def self.center_bias_keyword_search(keyword)
    json = MediastackService.center_bias_keyword_search(keyword)
    
    @articles = json[:data].map do |article_data|
      Article.new(article_data, "center_bias")
    end
  end
  
  def self.right_bias_keyword_search(keyword)
    json = MediastackService.right_bias_keyword_search(keyword)
    
    @articles = json[:data].map do |article_data|
      Article.new(article_data, "right_bias")
    end
  end

end