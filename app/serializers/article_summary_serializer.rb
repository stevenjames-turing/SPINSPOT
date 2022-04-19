class ArticleSummarySerializer 

  def self.article_summary_json(keyword, left_bias, center_bias, right_bias)
    {
      "topic": keyword,
      "type": "articles",
      "data": {
                "left_article": {
                                  "title": left_bias.title,
                                  "summary": left_bias.summary,
                                  "source": left_bias.source,
                                  "url": left_bias.url,
                                  "photo_url": left_bias.photo_url
                                },
                "center_article": {
                                    "title": center_bias.title,
                                    "summary": center_bias.summary,
                                    "source": center_bias.source,
                                    "url": center_bias.url,
                                    "photo_url": center_bias.photo_url
                                  },
                "right_article": {
                                  "title": right_bias.title,
                                  "summary": right_bias.summary,
                                  "source": right_bias.source,
                                  "url": right_bias.url,
                                  "photo_url": right_bias.photo_url
                                }
              }
    }
  end
end