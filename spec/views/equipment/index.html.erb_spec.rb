require 'rails_helper'

RSpec.describe "equipment/index", type: :view do
  before(:each) do
    assign(:equipment, [
      Equipment.create!(
        :equip_id => "Equip",
        :model => "Model",
        :purchase_date => "Purchase Date",
        :description => "MyText",
        :work_order => nil
      ),
      Equipment.create!(
        :equip_id => "Equip",
        :model => "Model",
        :purchase_date => "Purchase Date",
        :description => "MyText",
        :work_order => nil
      )
    ])
  end

  it "renders a list of equipment" do
    render
    assert_select "tr>td", :text => "Equip".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Purchase Date".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
