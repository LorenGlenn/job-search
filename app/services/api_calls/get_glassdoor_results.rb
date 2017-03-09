module ApiService
class Glassdoor

  def initialize(query, city, state)
    @query = query
    @city = city
    @state = state
  end

  def get_glassdoor
    begin
    glassdoor = HTTParty.get('http://api.glassdoor.com/api/api.htm?t.p=129477&t.k=g01DzFNPdZw&userip=0.0.0.0&useragent=test&format=json&v=1&action=jobs-stats&returnCities=true&returnJobTitles=true&q=' + @query+'&city='+@city+'&state='+@state)
    response = glassdoor["response"]["cities"]
    response
    rescue
      puts 'get_glassdoor'
    end
  end
end
end
