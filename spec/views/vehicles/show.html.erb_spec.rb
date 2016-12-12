require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :distance => "Distance",
      :driverName => "Driver Name",
      :plateNumber => "Plate Number",
      :carType => "Car Type",
      :modelMake => "Model Make",
      :queue => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Distance/)
    expect(rendered).to match(/Driver Name/)
    expect(rendered).to match(/Plate Number/)
    expect(rendered).to match(/Car Type/)
    expect(rendered).to match(/Model Make/)
    expect(rendered).to match(/2/)
  end
end
