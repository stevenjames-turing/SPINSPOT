class MediastackService
  def self.conn
    Faraday.new(url: 'http://api.mediastack.com/v1/') do |faraday|
      faraday.params['access_key'] = ENV['mediastack_key']
      faraday.adapter Faraday.default_adapter
    end
  end
end
