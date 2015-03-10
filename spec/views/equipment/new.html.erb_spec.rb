require 'rails_helper'

RSpec.describe "equipment/new", type: :view do
  before(:each) do
    assign(:equipment, Equipment.new(
      :equip_id => "MyString",
      :model => "MyString",
      :purchase_date => "MyString",
      :description => "MyText",
      :work_order => nil
    ))
  end

  it "renders new equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_index_path, "post" do

      assert_select "input#equipment_equip_id[name=?]", "equipment[equip_id]"

      assert_select "input#equipment_model[name=?]", "equipment[model]"

      assert_select "input#equipment_purchase_date[name=?]", "equipment[purchase_date]"

      assert_select "textarea#equipment_description[name=?]", "equipment[description]"

      assert_select "input#equipment_work_order_id[name=?]", "equipment[work_order_id]"
    end
  end
end
