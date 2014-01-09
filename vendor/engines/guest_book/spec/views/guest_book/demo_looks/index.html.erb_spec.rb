require 'spec_helper'

describe "demo_looks/index" do
  before(:each) do
    assign(:demo_looks, [
      stub_model(DemoLook,
        :title => "Title"
      ),
      stub_model(DemoLook,
        :title => "Title"
      )
    ])
  end

  it "renders a list of demo_looks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
