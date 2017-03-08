module ApiService
class Github

  def initialize(query, city)
    @query = query
    @city = city
  end

  def get_github
    github = HTTParty.get('http://jobs.github.com/positions.json?description=' + @query + '&location=' + @city)
    response = github
    response
  end
end
end
