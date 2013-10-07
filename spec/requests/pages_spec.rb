require 'spec_helper'

describe "Pages" do
  
  describe "Home page" do
    it "Should contain content 'Sample App'" do
    	visit '/pages/home'
  		expect(page).to have_content('Sample App')
    end
  end
  
end