class TldrFacade

  def self.advanced_article_summary(article_url)
    data = TldrService.advanced_article_summary(article_url)
    tldr = Tldr.new(data)
  end

  def self.standard_article_summary(article_url)
    data = TldrService.standard_article_summary(article_url)
    tldr = Tldr.new(data)
  end
end
