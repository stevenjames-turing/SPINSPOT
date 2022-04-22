class MediastackFacade

  def self.keyword_search(keyword, bias_string)
    json = MediastackService.keyword_search(keyword, bias_string)

    if json[:data] == [] || json.has_key?("error")
      empty_response = {
        title: "No Articles Found!",
        url: nil,
        source: nil,
        photo_url: nil,
        publish_at: nil
      }

      Article.new(empty_response, bias_string)
    else
      Article.new(json[:data][0], bias_string)
    end
  end

end
