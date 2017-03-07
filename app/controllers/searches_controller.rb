class SearchesController < ApplicationController


  def index
  end

  def show
    query = params[:query]
    diceResponse = ApiService::Dice.new(query)
    @dice = diceResponse.get_dice

    indeedResponse = ApiService::Indeed.new(query)
    @indeed = indeedResponse.get_indeed

    glassdoorResponse = ApiService::Glassdoor.new(query)
    @glassdoor = glassdoorResponse.get_glassdoor

    githubResponse = ApiService::Github.new(query)
    @github = githubResponse.get_github

  end


end
