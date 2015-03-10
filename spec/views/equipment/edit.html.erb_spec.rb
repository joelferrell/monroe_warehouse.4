require 'rails_helper'

RSpec.describe "equipment/edit", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      :equip_id => "MyString",
      :model => "MyString",
      :purchase_date => "MyString",
      :description => "MyText",
      :work_order => nil
    ))
  end

  it "renders the edit equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do

      assert_select "input#equipment_equip_id[name=?]", "equipment[equip_id]"

      assert_select "input#equipment_model[name=?]", "equipment[model]"

      assert_select "input#equipment_purchase_date[name=?]", "equipment[purchase_date]"

      assert_select "textarea#equipment_description[name=?]", "equipment[description]"

      assert_select "input#equipment_work_order_id[name=?]", "equipment[work_order_id]"
    end
  end
end
