require 'rails_helper'

RSpec.describe "parts/edit", type: :view do
  before(:each) do
    @part = assign(:part, Part.create!(
      :part_number => 1,
      :part_description => "MyText",
      :unit_price => "9.99",
      :unit_quantity => 1,
      :parts_total => "9.99",
      :work_order => nil
    ))
  end

  it "renders the edit part form" do
    render

    assert_select "form[action=?][method=?]", part_path(@part), "post" do

      assert_select "input#part_part_number[name=?]", "part[part_number]"

      assert_select "textarea#part_part_description[name=?]", "part[part_description]"

      assert_select "input#part_unit_price[name=?]", "part[unit_price]"

      assert_select "input#part_unit_quantity[name=?]", "part[unit_quantity]"

      assert_select "input#part_parts_total[name=?]", "part[parts_total]"

      assert_select "input#part_work_order_id[name=?]", "part[work_order_id]"
    end
  end
end
