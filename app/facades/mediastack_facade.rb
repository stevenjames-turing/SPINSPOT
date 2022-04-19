class MediastackFacade

  def self.keyword_search(keyword, bias_string)
    json = MediastackService.keyword_search(keyword, bias_string)

    @articles = json[:data].map do |article_data|
      Article.new(article_data, bias_string)
    end
  end

end
