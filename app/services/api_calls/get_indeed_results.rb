module ApiService
class Indeed

  def initialize(query)
    @query = query
  end

  def get_indeed
    indeed = HTTParty.get('http://api.indeed.com/ads/apisearch?publisher=7176344717561984&v=2&limit=5&q=' + @query)
    response = indeed["response"]["results"]["result"]
    response
  end
end
end
