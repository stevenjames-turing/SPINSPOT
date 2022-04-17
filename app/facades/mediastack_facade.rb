class MediastackFacade

  def self.left_bias_keyword_search(keyword)
    data = MediastackService.left_bias_keyword_search(keyword)
    @article = Article.new(data)
  end

  def self.center_bias_keyword_search(keyword)
    data = MediastackService.center_bias_keyword_search(keyword)
    @article = Article.new(data)
  end

  def self.right_bias_keyword_search(keyword)
    data = MediastackService.right_bias_keyword_search(keyword)
    @article = Article.new(data)
  end
end
