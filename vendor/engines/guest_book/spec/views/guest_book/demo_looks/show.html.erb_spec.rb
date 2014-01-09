require 'spec_helper'

describe "demo_looks/show" do
  before(:each) do
    @demo_look = assign(:demo_look, stub_model(DemoLook,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
