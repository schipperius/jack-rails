require 'spec_helper'

describe "Home" do
  
  describe "index page" do
    it "should have h1 content 'Book of Jack'" do
      visit root_path
      page.should have_selector('h1', text: 'Book of Jack')
    end
    
    it "should have title 'Home'" do
      visit root_path
      page.should have_selector('title', 
      :text => "Book of Jack - Home")
    end
  end
  
  describe "integrate page" do
    it "should have h1 content 'Integrate'" do
      visit '/integrate'
      page.should have_content('Integrate')
    end
    
    it "should have title 'Integrate'" do
      visit '/integrate'
      page.should have_selector('title', 
      :text => "Book of Jack - Integrate")
    end
  end

  it "should have the right links on the layout" do
      visit root_path
      click_link "Book of Jack"
      page.should # fill in
      
      click_link "About Jack"
      page.should # fill in
      
      click_link "Browse Articles"
      page.should # fill in
      
      click_link "Sign up"
      page.should # fill in

      click_link "Sign in"
      page.should # fill in

      click_link "About Jack"
      page.should # fill in

      click_link "Browse Articles"
      page.should # fill in

      click_link "Integrate Design "
      page.should # fill in
    end

end
