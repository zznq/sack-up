require 'spec_helper'

describe UserProfile do
  subject { FactoryGirl.create :user_profile }

  describe 'validatations' do
    it { should validate_presence_of :user }
  end

  describe 'associations' do
    it { should belong_to :user }
  end

  describe 'methods' do
    it { should respond_to :name }
    it { should respond_to :bio }
    it { should respond_to :location }
    it { should respond_to :url }
  end

  describe '#name' do
    subject { FactoryGirl.create :user_profile, :name => name }
    let(:name) { Faker::Name.name }
    it 'should return the user profile name' do
      subject.name.should == name
    end
  end

  describe '#name=' do
    it 'should set the user profile name' do
      subject.name = 'foo'
      subject.name.should == 'foo'
    end
  end

  describe '#bio' do
    let(:bio) { Faker::Lorem::paragraph }
    subject { FactoryGirl.create :user_profile, :bio => bio}
    it 'should return the user profile bio' do
      subject.bio.should == bio
    end
  end

  describe '#bio=' do
    it 'should set the user profile bio' do
      subject.bio = 'bio test'
      subject.bio.should == 'bio test'
    end
  end

  describe '#location' do
    subject { FactoryGirl.create :user_profile, :location => location }
    let(:location) { "#{Faker::Address.street_address} #{Faker::Address.city}, #{Faker::Address.state}" }
    it 'should return the user profile location' do
      subject.location.should == location
    end
  end

  describe '#location=' do
    let(:new_location) { "#{Faker::Address.city}, #{Faker::Address.state}" }
    it 'should set the user profile location' do
      subject.location = new_location;
      subject.location.should == new_location;
    end
  end
end
