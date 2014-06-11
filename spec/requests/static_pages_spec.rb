require 'spec_helper'



RSpec.describe "StaticPages", :type => :request do
  describe "Static_pages" do

  	describe "Home page" do
  		
    it "should have the content 'Sample App" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')

      describe "Contact page" do

      	it "should have the content 'Contact'" do
      		visit '/static_pages/contact'
      		expect(page).to have_content('Contact')
      	end

      	it it "should have the title 'Contact'" do
      		visit '/static_pages/contact'
      		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
