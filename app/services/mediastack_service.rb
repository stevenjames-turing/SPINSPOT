class MediastackService
  def self.search_keyword(keyword)
    conn = Faraday.new(url: 'http://api.mediastack.com/v1/') do |faraday|
      faraday.params['access_key'] = ENV['mediastack_key']
      faraday.params['keywords'] = "#{keyword}"
      faraday.params['languages'] = "en"
      faraday.adapter Faraday.default_adapter
    end
    
    response = conn.get("news")

    JSON.parse(response.body, symbolize_names: true)
  end
end
