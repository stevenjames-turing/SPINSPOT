class MediastackService
  # source options:
                  # ABC News (abc-news),
                  # Bloomberg (bloomberg),
                  # Breitbart (breitbart),
                  # Cnbc (cnbc),
                  # CNN (cnn),
                  # Forbes (forbes),
                  # Fox News (foxnews),
                  # Guardian (guardian)
                  # New York Times (nytimes),
                  # NPR (npr-national-public-radio)
                  # Reuters (reuters),
                  # The Verge (the-verge),
                  # Time Magazine (time)
                  # Washington Post (washington-post): Correct source code, but no results returned from API currently

  def self.keyword_search(keyword, bias_string)
    conn = Faraday.new(url: 'http://api.mediastack.com/v1/') do |faraday|
      faraday.params['access_key'] = ENV['mediastack_key']
      faraday.params['keywords'] = "#{keyword}"

      case bias_string
        when "left_bias"
          faraday.params['sources'] = "abc-news,cnn,guardian,nytimes"
        when "center_bias"
          faraday.params['sources'] = "bloomberg,cnbc,forbes,npr-national-public-radio,reuters"
        when "right_bias"
          faraday.params['sources'] = "foxnews,breitbart"
        else
          faraday.params['sources'] = nil
      end

      faraday.params['languages'] = "en"
      faraday.params['countries'] = "us"
      faraday.params['sort'] = 'published_desc'
      faraday.params['limit'] = '1'
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("news")

    JSON.parse(response.body, symbolize_names: true)
  end

end
