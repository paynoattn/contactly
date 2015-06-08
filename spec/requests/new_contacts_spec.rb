require 'rails_helper'

RSpec.describe "NewContacts", type: :request do
  describe "Makes a new contact" do
    it "should create a new user" do
      get root_path
      click_link "new"
      fill_in "name", :with => "Jon Doe"
      fill_in "phone", :with => "1234567890"
      click_button "submit"
      get root_path 
      contacts.count.should == 1
    end

    it "should not create a new user without a 10 digit phone number" do
      get root_path
      click_link "new"
      fill_in "phone", :with => "123"
      click_button "submit"
      get root_path 
      contacts.count.should == 0
    end

    it "should not create a new user without a 10 digit phone number" do
      get root_path
      click_link "new"
      fill_in "name", :with => "Jon Doe"
      fill_in "phone", :with => "123"
      click_button "submit"
      get root_path 
      contacts.count.should == 0
    end
  end
end
