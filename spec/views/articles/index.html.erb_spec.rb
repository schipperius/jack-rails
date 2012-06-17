require 'spec_helper'

describe "articles/index" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :article_id => 1,
        :position => 2,
        :title => "Title",
        :intro => "MyText",
        :sec1 => "MyText",
        :sec2 => "MyText",
        :sec3 => "MyText",
        :footnotes => "MyText"
      ),
      stub_model(Article,
        :article_id => 1,
        :position => 2,
        :title => "Title",
        :intro => "MyText",
        :sec1 => "MyText",
        :sec2 => "MyText",
        :sec3 => "MyText",
        :footnotes => "MyText"
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
