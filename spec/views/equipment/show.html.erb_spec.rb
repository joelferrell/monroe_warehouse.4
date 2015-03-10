require 'rails_helper'

RSpec.describe "equipment/show", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      :equip_id => "Equip",
      :model => "Model",
      :purchase_date => "Purchase Date",
      :description => "MyText",
      :work_order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Equip/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Purchase Date/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
