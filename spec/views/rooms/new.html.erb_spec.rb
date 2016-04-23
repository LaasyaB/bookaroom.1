require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :name => "MyString",
      :location => "MyText",
      :capacity => 1,
      :room_number => 1,
      :available => false
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_name[name=?]", "room[name]"

      assert_select "textarea#room_location[name=?]", "room[location]"

      assert_select "input#room_capacity[name=?]", "room[capacity]"

      assert_select "input#room_room_number[name=?]", "room[room_number]"

      assert_select "input#room_available[name=?]", "room[available]"
    end
  end
end
