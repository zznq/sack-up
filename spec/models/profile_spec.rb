require 'spec_helper'

describe Profile do
  let(:name) { Faker::Name.name }
  subject { FactoryGirl.create :profile, :name => name }

  describe 'name' do
    it 'should return the profile name' do
      subject.name.should == name
    end
  end

  describe 'name=' do
    it 'should set the profile name' do
      subject.name = 'foo'
      subject.name.should == 'foo'
    end
  end

  describe 'associations' do
    it { should belong_to :user }
  end
end
