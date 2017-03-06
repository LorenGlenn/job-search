class SearchesController < ApplicationController

  def index
    @search = "New Search"
  end

  def create
    @dice = HTTParty.get('http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=' + params["New Search"][:query])
    render :show
  end
end
