class SearchesController < ApplicationController

  def index
    @search = "New Search"
  end

  def create
    query = params["New Search"][:query]
    diceResponse = Dice.new(query)
    @dice = diceResponse.get_dice

    indeedResponse = Indeed.new(query)
    @indeed = indeedResponse.get_indeed

    glassdoorResponse = Glassdoor.new(query)
    @glassdoor = glassdoorResponse.get_glassdoor

    linkedinResponse = Linkedin.new(query)
    @linkedin = linkedinResponse.get_linkedin

    githubResponse = Github.new(query)
    @github = githubResponse.get_github
    render :show
  end


end
