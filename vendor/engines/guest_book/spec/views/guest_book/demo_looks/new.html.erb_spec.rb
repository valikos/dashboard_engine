require 'spec_helper'

describe "demo_looks/new" do
  before(:each) do
    assign(:demo_look, stub_model(DemoLook,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new demo_look form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demo_looks_path, "post" do
      assert_select "input#demo_look_title[name=?]", "demo_look[title]"
    end
  end
end
