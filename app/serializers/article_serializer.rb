  class ArticleSerializer
    include JSONAPI::Serializer
    attributes :url, :bias, :source
  end
