require 'spec_helper'

describe ProjectsController do
  subject { page }

  describe 'Visit Projects Index' do
    before do
      FactoryGirl.create_list(:project, 5)

      visit projects_path
    end

    it 'should display all projects' do
      projects = all('ul.projects li')
      projects.size.should == Project.count

      Project.all.each_with_index do |project, i|
        projects[i].text.should include project.name
      end
    end
  end

  describe 'Visit Project New' do
    before do
      visit new_project_path
    end

    it 'should display a form' do
      should have_css('form')
    end

    it 'should have a name input' do
      should have_field 'Name'
    end

    it 'should have a description input' do
      should have_field 'Description'
    end

    it 'should have a tags input' do
      should have_field 'Tags'
    end

    it 'should have a submit button' do
      should have_button 'Create Project'
    end
  end
end
