class ProjectsController < ApplicationController

  def index
    @projects = GithubProjects.new("accua")
    @projects = @projects.get_projects
  end

end
