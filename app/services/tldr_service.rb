class TldrService
  def self.advanced_article_summary(article_url)
    conn = Faraday.new(url: 'https://tldrthis.p.rapidapi.com/v1/model') do |faraday|
      faraday.headers['X-RapidAPI-Host'] = 'tldrthis.p.rapidapi.com'
      faraday.headers['X-RapidAPI-Key'] = ENV['tldr_key']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.post('https://tldrthis.p.rapidapi.com/v1/model/abstractive/summarize-url/') do |req|
      req.body = "{
                          \"url\": \"#{article_url}\",
                          \"min_length\": 100,
                          \"max_length\": 300,
                          \"is_detailed\": false
                          }"
    end

    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.standard_article_summary(article_url)
    conn = Faraday.new(url: 'https://tldrthis.p.rapidapi.com/v1/model') do |faraday|
      faraday.headers['X-RapidAPI-Host'] = 'tldrthis.p.rapidapi.com'
      faraday.headers['X-RapidAPI-Key'] = ENV['tldr_key']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.post('https://tldrthis.p.rapidapi.com/v1/model/extractive/summarize-url/') do |req|
      req.body = "{
                  \"url\": \"#{article_url}\",
                  \"num_sentences\": 5,
                  \"is_detailed\": false
                  }"
    end

    json = JSON.parse(response.body, symbolize_names: true)
  end
end
