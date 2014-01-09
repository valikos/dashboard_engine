require 'spec_helper'

describe "demo_looks/edit" do
  before(:each) do
    @demo_look = assign(:demo_look, stub_model(DemoLook,
      :title => "MyString"
    ))
  end

  it "renders the edit demo_look form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demo_look_path(@demo_look), "post" do
      assert_select "input#demo_look_title[name=?]", "demo_look[title]"
    end
  end
end
