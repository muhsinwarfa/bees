require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :distance => "Distance",
        :driverName => "Driver Name",
        :plateNumber => "Plate Number",
        :carType => "Car Type",
        :modelMake => "Model Make",
        :queue => 2
      ),
      Vehicle.create!(
        :distance => "Distance",
        :driverName => "Driver Name",
        :plateNumber => "Plate Number",
        :carType => "Car Type",
        :modelMake => "Model Make",
        :queue => 2
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Distance".to_s, :count => 2
    assert_select "tr>td", :text => "Driver Name".to_s, :count => 2
    assert_select "tr>td", :text => "Plate Number".to_s, :count => 2
    assert_select "tr>td", :text => "Car Type".to_s, :count => 2
    assert_select "tr>td", :text => "Model Make".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
