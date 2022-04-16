class Article 
  attr_reader :bias, :title, :url, :source, :image, :published_at

  def initialize(article_data, bias)
    @bias = bias 
    @title = article_data[:title]
    @url = article_data[:url]
    @source = article_data[:source]
    @image = article_data[:image]
    @published_at = article_data[:published_at]
  end
end