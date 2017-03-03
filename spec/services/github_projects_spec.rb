require 'rails_helper'

describe GithubProjects, :vcr => true do
  it "adds an error if no email is attached" do
    projects = GithubProjects.new('').get_projects
    expect(projects).to eq 'Not Found'
  end
end
