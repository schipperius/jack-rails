require 'spec_helper'

describe "images/show" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :image_id => 1,
      :title => "Title",
      :lat => "9.99",
      :lng => "9.99",
      :title => "Title",
      :caption => "MyText",
      :cite => "MyText",
      :footnote => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
