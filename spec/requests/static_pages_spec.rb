require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App' " do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have a custom page title" do
      visit root_path
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
  end

    it "should have the title 'About Us' " do 
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact" do

    it "Should have 'Contact Information'" do
      vist contact_path
      expect(page).to have_content('Contact Information')
    end

    it "should have the title 'Contact Information' " do 
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end




