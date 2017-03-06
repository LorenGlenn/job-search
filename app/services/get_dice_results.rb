class Dice

  def initialize(query)
    @query = query
  end

  def get_dice
    dice = HTTParty.get('http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=' + @query)
    binding.pry
    response = dice.parsed_response["resultItemList"]
    response
  end
end
