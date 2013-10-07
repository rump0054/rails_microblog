require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'Welcome to the Microblog'" do
      visit root_path
      expect(page).to have_content('Welcome to the Microblog')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Microblog")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit help_path
      expect(page).to have_content('Help Page')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Microblog | Help")
    end

  end

  describe "About page" do
    it "should have the h1 'About Page'" do
      visit about_path
      expect(page).to have_content('About Page')
    end

    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("Microblog | About")
    end

  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Microblog | Contact")
    end
  end
end