require 'spec_helper'

describe ProjectsController do

  describe 'GET #index' do
    before :each do
      FactoryGirl.create :project
      get :index
    end

    it 'should be root path' do
      request.path.should == root_path
    end

    it 'should display all projects in a list' do
      response.should render_template :index
    end

    it 'should pass list of projects to view' do
      assigns(:projects).should be_present
    end
  end

  describe 'GET #new' do
    before :each do
      get :new
    end
    
    it 'should display render the correct template' do
      response.should render_template :new
    end

    it 'should receive a project object that has not been persisted' do
      project = assigns(:project)
      project.should be_present
      project.should_not be_persisted
    end
  end
end
