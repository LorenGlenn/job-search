module ApiService
class Github

  def initialize(query, city, state)
    @query = query
    @city = city
    @state = state
  end

  def get_github
    github = HTTParty.get('http://jobs.github.com/positions.json?description=' + @query + '&location=' + @city)
    response = github
    response
  end
end
end
