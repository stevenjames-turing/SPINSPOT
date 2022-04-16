class Article 
  attr_reader :bias, :title, :url, :source, :photo_url, :published_at

  def initialize(article_data, bias)
    @bias = bias 
    @title = article_data[:title]
    @url = article_data[:url]
    @source = article_data[:source]
    @photo_url = article_data[:image]
    @published_at = article_data[:published_at]
  end
end