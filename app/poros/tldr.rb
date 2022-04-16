class Tldr 
  attr_reader :bias, :source, :title, :summary, :url, :photo_url, :pub_date

  def initialize(tldr_data, bias, source)
    @bias = bias
    @source = source
    @title = tldr_data[:article_title]
    @summary = tldr_data[:summary]
    @url = tldr_data[:article_url]
    @photo_url = tldr_data[:article_image]
    @pub_date = tldr_data[:article_pub_date]
  end
end