class Glassdoor

  def initialize(query)
    @query = query
  end

  def get_glassdoor
    glassdoor = HTTParty.get('http://api.glassdoor.com/api/api.htm?t.p=129477&t.k=g01DzFNPdZw&userip=0.0.0.0&useragent=test&format=json&v=1&action=jobs-stats&returnJobTitles=true&q=' + @query)
    response = glassdoor["response"]["jobTitles"]
    response
  end
end
