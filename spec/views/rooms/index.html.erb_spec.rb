require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :name => "Name",
        :location => "MyText",
        :capacity => 1,
        :room_number => 2,
        :available => false
      ),
      Room.create!(
        :name => "Name",
        :location => "MyText",
        :capacity => 1,
        :room_number => 2,
        :available => false
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
