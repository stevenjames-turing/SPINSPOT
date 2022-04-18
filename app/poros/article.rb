class Article
  attr_reader :title, :url, :source, :photo_url, :published_at

  def initialize(article_data)
    @title = article_data[:data][0][:title]
    @url = article_data[:data][0][:url]
    @source = article_data[:data][0][:source]
    @photo_url = article_data[:data][0][:image]
    @published_at = article_data[:data][0][:published_at]
  end
end
