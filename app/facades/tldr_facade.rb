class TldrFacade

  def self.advanced_article_summary(article_url, bias, source)
    json = TldrService.advanced_article_summary(article_url)
    
    @tldr = Tldr.new(json, bias, source)
  end

  
end