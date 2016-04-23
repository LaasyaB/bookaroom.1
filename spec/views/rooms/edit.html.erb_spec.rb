require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :name => "MyString",
      :location => "MyText",
      :capacity => 1,
      :room_number => 1,
      :available => false
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_name[name=?]", "room[name]"

      assert_select "textarea#room_location[name=?]", "room[location]"

      assert_select "input#room_capacity[name=?]", "room[capacity]"

      assert_select "input#room_room_number[name=?]", "room[room_number]"

      assert_select "input#room_available[name=?]", "room[available]"
    end
  end
end
