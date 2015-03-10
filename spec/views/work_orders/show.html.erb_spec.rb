require 'rails_helper'

RSpec.describe "work_orders/show", type: :view do
  before(:each) do
    @work_order = assign(:work_order, WorkOrder.create!(
      :wo_number => 1,
      :requestor => "Requestor",
      :priority => 2,
      :repair_facility => "Repair Facility",
      :repair_type => "Repair Type",
      :location => "Location",
      :summary => "MyText",
      :percent_complete => "9.99",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Requestor/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Repair Facility/)
    expect(rendered).to match(/Repair Type/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
