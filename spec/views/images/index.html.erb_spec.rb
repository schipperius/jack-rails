require 'spec_helper'

describe "images/index" do
  before(:each) do
    assign(:images, [
      stub_model(Image,
        :image_id => 1,
        :title => "Title",
        :lat => "9.99",
        :lng => "9.99",
        :title => "Title",
        :caption => "MyText",
        :cite => "MyText",
        :footnote => "MyText"
      ),
      stub_model(Image,
        :image_id => 1,
        :title => "Title",
        :lat => "9.99",
        :lng => "9.99",
        :title => "Title",
        :caption => "MyText",
        :cite => "MyText",
        :footnote => "MyText"
      )
    ])
  end

  it "renders a list of images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
