module ApiService
  class Indeed

    def initialize(query, city, state)
      @query = query
      @city = city
      @state = state
    end

    def get_indeed
      indeed = HTTParty.get('http://api.indeed.com/ads/apisearch?publisher=7176344717561984&q='+@query+'&l='+@city+'%2C+'+@state+'&limit=10&v=2')
      response = indeed["response"]["results"]["result"]
      response
    end
  end
end
