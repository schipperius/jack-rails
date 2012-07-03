require 'spec_helper'

describe "Articles" do
  
  describe "article index page" do
    it "should have h1 content 'Articles'" do
      visit '/articles'
      page.should have_content('Articles')
    end
    
    it "should have title 'Articles'" do
      visit '/articles'
      page.should have_selector('title', 
      :text => "Book of Jack - Articles")
    end
  end

end
