require 'spec_helper'

describe ProjectsController do

  describe 'GET #index' do
    let(:project) do
      FactoryGirl.create :project
    end

    before :each do
      get :index
    end

    it 'should be root path' do
      request.path.should == root_path
    end

    it 'should display all projects in a list' do
      response.should render_template :index
    end
  end
end
