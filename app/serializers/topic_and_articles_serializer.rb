class TopicAndArticlesSerializer

  def self.json_topic_and_articles(keyword, left_article, left_tldr, center_article, center_tldr, right_article, right_tldr)
    {
      "topic": keyword,
      "type": "articles",
      "data": {
        "left_article": {
          "title": left_article.title,
          "summary": left_tldr.summary,
          "source": left_article.source,
          "url": left_article.url,
          "photo_url": left_article.photo_url
        },
        "center_article": {
          "title": center_article.title,
          "summary": center_tldr.summary,
          "source": center_article.source,
          "url": center_article.url,
          "photo_url": center_article.photo_url
        },
        "right_article": {
          "title": right_article.title,
          "summary": right_tldr.summary,
          "source": right_article.source,
          "url": right_article.url,
          "photo_url": right_article.photo_url
        }
      }
    }
  end
end
