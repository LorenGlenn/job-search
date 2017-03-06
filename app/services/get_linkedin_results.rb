class Linkedin

  def initialize(query)
    @query = query
  end

  def get_linkedin
    linkedin = HTTParty.get('https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=78t0mqd50yaz2q&redirect_uri=http://localhost:3000/auth/linkedin/callback&state=987654321&scope=r_basicprofile')
    response = linkedin
    response
  end
end


# id: 78t0mqd50yaz2q
#
# secret: 9F2R6MWCqfDEsVnz
