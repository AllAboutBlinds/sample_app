require 'spec_helper'

RSpec.configure do |config|
	config.include Capybara::DSL
end

RSpec.describe "StaticPages", :type => :request do
  describe "Static_pages" do

  	describe "Home page" do
  		
    it "should have the content 'Sample App" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end
