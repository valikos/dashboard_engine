require 'spec_helper'

describe "ideas/index" do
  before(:each) do
    assign(:ideas, [
      stub_model(Idea,
        :description => "Description"
      ),
      stub_model(Idea,
        :description => "Description"
      )
    ])
  end

  it "renders a list of ideas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
