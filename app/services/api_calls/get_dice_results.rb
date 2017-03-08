module ApiService
  class Dice

    def initialize(query, city, state)
      @query = query
      @city = city
      @state = state
    end

    def get_dice
      dice = HTTParty.get('http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=' + @query + '&city=' + @city + '+' + @state)
      response = dice.parsed_response["resultItemList"]
      response
    end
  end
end
