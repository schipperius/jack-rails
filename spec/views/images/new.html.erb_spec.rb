require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :image_id => 1,
      :title => "MyString",
      :lat => "9.99",
      :lng => "9.99",
      :title => "MyString",
      :caption => "MyText",
      :cite => "MyText",
      :footnote => "MyText"
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path, :method => "post" do
      assert_select "input#image_image_id", :name => "image[image_id]"
      assert_select "input#image_title", :name => "image[title]"
      assert_select "input#image_lat", :name => "image[lat]"
      assert_select "input#image_lng", :name => "image[lng]"
      assert_select "input#image_title", :name => "image[title]"
      assert_select "textarea#image_caption", :name => "image[caption]"
      assert_select "textarea#image_cite", :name => "image[cite]"
      assert_select "textarea#image_footnote", :name => "image[footnote]"
    end
  end
end
