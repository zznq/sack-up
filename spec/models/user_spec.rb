require 'spec_helper'

describe User do
  let(:email) { Faker::Internet.email }
  let(:password) { Faker::Internet.password }
  subject { FactoryGirl.create :user, :email => email, :password => password }

  describe ".email" do
    it 'should return the users email' do
      subject.email.should == email
    end
  end

  describe ".email=" do
    let(:new_email) { "testing_#{email}" }

    it "should set the users email" do
      subject.email = new_email

      subject.email.should == new_email
    end
  end

  describe ".password" do
    it "should return the users password" do
      subject.password.should == password
    end
  end

  describe ".password=" do
    let(:new_password) { "#{password}_testing" }
    it "should set the users password" do
      subject.password = new_password
      subject.password.should == new_password
    end
  end
end
