class GithubProjects

  def initialize(username)
    @username = username
  end

  def get_projects
    JSON.parse(RestClient.get("https://#{ENV['GH_KEY']}@api.github.com/users/" + @username + "/repos"))
  end

end
