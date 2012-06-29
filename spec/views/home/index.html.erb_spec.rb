require 'spec_helper'

describe "home pages" do

  describe "Home page" do

    it "should have the h1 'The Book of Jack'" do
      visit '/home/index'
      page.should have_selector('h1', :text => 'The Book of Jack')
    end

    it "should have the title 'Home'" do
      visit '/home'
      page.should have_selector('title',
                        :text => "Book of Jack - Home")
    end
  end

  describe "Integrate page" do

    it "should have the content 'Integrate'" do
      visit '/integrate'
      page.should have_content('Integrate')
    end
  end
end