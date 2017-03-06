class SearchesController < ApplicationController

  def index
    @search = "New Search"
  end

  def create
    @dice = HTTParty.get('http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=' + params["New Search"][:query])
    @glassdoor = HTTParty.get('http://api.glassdoor.com/api/api.htm?t.p=129477&t.k=g01DzFNPdZw&userip=0.0.0.0&useragent=test&format=json&v=1&action=jobs-stats&returnJobTitles=true&q=' + params["New Search"][:query])
    @indeed = HTTParty.get('http://api.indeed.com/ads/apisearch?publisher=7176344717561984&v=2&limit=20&q=' + params["New Search"][:query])
    respond_to  do |format|
        format.html { redirect_to searches_path }
        format.js
      end
  end


end
