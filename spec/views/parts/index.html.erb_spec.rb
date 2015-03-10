require 'rails_helper'

RSpec.describe "parts/index", type: :view do
  before(:each) do
    assign(:parts, [
      Part.create!(
        :part_number => 1,
        :part_description => "MyText",
        :unit_price => "9.99",
        :unit_quantity => 2,
        :parts_total => "9.99",
        :work_order => nil
      ),
      Part.create!(
        :part_number => 1,
        :part_description => "MyText",
        :unit_price => "9.99",
        :unit_quantity => 2,
        :parts_total => "9.99",
        :work_order => nil
      )
    ])
  end

  it "renders a list of parts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
