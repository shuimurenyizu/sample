require 'spec_helper'

describe "Pages" do

  describe "Home page" do

    it "should have the content 'Sample'" do
      visit '/pages/home'
      expect(page).to have_content('Sample')
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample | Home")
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/pages/help'
      expect(page).to have_content('Help')
    end

		it "should have the title 'Help'" do
      visit '/pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample | Help")
    end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample | About Us")
    end    
  end

end