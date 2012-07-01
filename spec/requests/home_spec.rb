require 'spec_helper'

describe "home view" do
  
  describe "index page" do
    it "should have h1 content 'Book of Jack'" do
      visit '/'
      page.should have_content('Book of Jack')
    end
    
    it "should have title 'Home'" do
      visit '/'
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

end
