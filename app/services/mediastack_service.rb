class MediastackService
  # source options: 
                  # ABC News (abc-news), 
                  # Bloomberg (bloomberg), 
                  # Cnbc (cnbc), 
                  # CNN (cnn), 
                  # Fox News (foxnews),
                  # Guardian (guardian)
                  # New York Times (nytimes), 
                  # NPR (npr-national-public-radio)
                  # Reuters (reuters), 
                  # The Verge (the-verge), 
                  # Time Magazine (time)
                  # Washington Post (washington-post): Correct source code, but no results returned from API currently

  def self.search_keyword(keyword)
    conn = Faraday.new(url: 'http://api.mediastack.com/v1/') do |faraday|
      faraday.params['access_key'] = ENV['mediastack_key']
      faraday.params['keywords'] = "#{keyword}"
      faraday.params['sources'] = "abc-news,bloomberg,cnbc,cnn,foxnews,guardian,nytimes,npr-national-public-radio,reuters"
      faraday.params['languages'] = "en"
      faraday.params['countries'] = "us"
      faraday.params['sort'] = 'published_desc'
      faraday.adapter Faraday.default_adapter
    end
    
    response = conn.get("news")

    JSON.parse(response.body, symbolize_names: true)
  end
end
