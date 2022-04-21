class TldrFacade

  def self.advanced_article_summary(article_url, bias, source)
    if article_url == nil

      nil_response = {
        article_title: "Article Not Found!",
        summary: ["Whatever you were looking up is probably fake news anyway."],
        url: nil,
        article_image: "https://stryvemarketing.com/wp-content/uploads/2016/04/image.gif",
        pub_date: nil
      }

      @tldr = Tldr.new(nil_response, bias, source)
    else
      json = TldrService.advanced_article_summary(article_url)
      @tldr = Tldr.new(json, bias, source)
    end

  end

  def self.standard_article_summary(article_url, bias, source)
    if article_url == nil

      nil_response = {
        article_title: "Article Not Found!",
        summary: ["Whatever you were looking up is probably fake news anyway."],
        url: nil,
        article_image: "https://stryvemarketing.com/wp-content/uploads/2016/04/image.gif",
        pub_date: nil
      }

      @tldr = Tldr.new(nil_response, bias, source)
    else
      json = TldrService.standard_article_summary(article_url)
      @tldr = Tldr.new(json, bias, source)
    end
  end
end
