class GithubProjects

  def initialize(username)
    @username = username
  end

  def get_projects
    begin
      JSON.parse(RestClient.get("https://#{ENV['GH_KEY']}@api.github.com/users/" + @username + "/repos?sort='updated'"))
    rescue Exception => error
      JSON.parse(error.response)['message']
    end
  end
end
