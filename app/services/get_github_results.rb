class Github

  def initialize(query)
    @query = query
  end

  def get_github
    github = HTTParty.get('http://jobs.github.com/positions.json?description=' + @query)
    binding.pry
    response = github
    response
  end
end
