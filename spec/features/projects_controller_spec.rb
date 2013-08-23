require 'spec_helper'

feature ProjectsController do
  describe 'Visit Projects Index' do
    background do
      FactoryGirl.create_list(:project, 5)

      visit projects_path
    end

    scenario 'should display all projects' do
      projects = all('ul.projects li')
      projects.size.should == Project.count

      Project.all.each_with_index do |project, i|
        projects[i].text.should include project.name
      end
    end
  end
end
