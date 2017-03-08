class SearchesController < ApplicationController


  def index
  end

  def show
    @query = params[:query]
    @city = params[:city]
    @state = params[:state]
    respond_to do |format|
      if params[:dice]
        diceResponse = ApiService::Dice.new(@query, @city, @state)
        @dice = diceResponse.get_dice
        format.js { render 'dice' }
      elsif params[:indeed]
        indeedResponse = ApiService::Indeed.new(@query, @city, @state)
        @indeed = indeedResponse.get_indeed
        format.js { render 'indeed' }
      elsif params[:glassdoor]
        glassdoorResponse = ApiService::Glassdoor.new(@query, @city, @state)
        @glassdoor = glassdoorResponse.get_glassdoor
        format.js { render 'glassdoor' }
      elsif params[:github]
        githubResponse = ApiService::Github.new(@query, @city, @state)
        @github = githubResponse.get_github
        format.js { render 'github' }
      else
        format.html
      end
    end
  end
end
