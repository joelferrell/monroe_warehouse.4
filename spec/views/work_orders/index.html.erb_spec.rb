require 'rails_helper'

RSpec.describe "work_orders/index", type: :view do
  before(:each) do
    assign(:work_orders, [
      WorkOrder.create!(
        :wo_number => 1,
        :requestor => "Requestor",
        :priority => 2,
        :repair_facility => "Repair Facility",
        :repair_type => "Repair Type",
        :location => "Location",
        :summary => "MyText",
        :percent_complete => "9.99",
        :user => nil
      ),
      WorkOrder.create!(
        :wo_number => 1,
        :requestor => "Requestor",
        :priority => 2,
        :repair_facility => "Repair Facility",
        :repair_type => "Repair Type",
        :location => "Location",
        :summary => "MyText",
        :percent_complete => "9.99",
        :user => nil
      )
    ])
  end

  it "renders a list of work_orders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Requestor".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Repair Facility".to_s, :count => 2
    assert_select "tr>td", :text => "Repair Type".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
