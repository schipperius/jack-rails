require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :article_id => 1,
      :position => 1,
      :title => "MyString",
      :intro => "MyText",
      :sec1 => "MyText",
      :sec2 => "MyText",
      :sec3 => "MyText",
      :footnotes => "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do
      assert_select "input#article_article_id", :name => "article[article_id]"
      assert_select "input#article_position", :name => "article[position]"
      assert_select "input#article_title", :name => "article[title]"
      assert_select "textarea#article_intro", :name => "article[intro]"
      assert_select "textarea#article_sec1", :name => "article[sec1]"
      assert_select "textarea#article_sec2", :name => "article[sec2]"
      assert_select "textarea#article_sec3", :name => "article[sec3]"
      assert_select "textarea#article_footnotes", :name => "article[footnotes]"
    end
  end
end
