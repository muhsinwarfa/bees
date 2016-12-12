require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :distance => "MyString",
      :driverName => "MyString",
      :plateNumber => "MyString",
      :carType => "MyString",
      :modelMake => "MyString",
      :queue => 1
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input#vehicle_distance[name=?]", "vehicle[distance]"

      assert_select "input#vehicle_driverName[name=?]", "vehicle[driverName]"

      assert_select "input#vehicle_plateNumber[name=?]", "vehicle[plateNumber]"

      assert_select "input#vehicle_carType[name=?]", "vehicle[carType]"

      assert_select "input#vehicle_modelMake[name=?]", "vehicle[modelMake]"

      assert_select "input#vehicle_queue[name=?]", "vehicle[queue]"
    end
  end
end
