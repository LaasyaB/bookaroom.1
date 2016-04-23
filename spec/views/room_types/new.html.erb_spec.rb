require 'rails_helper'

RSpec.describe "room_types/new", type: :view do
  before(:each) do
    assign(:room_type, RoomType.new(
      :room => nil,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new room_type form" do
    render

    assert_select "form[action=?][method=?]", room_types_path, "post" do

      assert_select "input#room_type_room_id[name=?]", "room_type[room_id]"

      assert_select "input#room_type_title[name=?]", "room_type[title]"

      assert_select "textarea#room_type_description[name=?]", "room_type[description]"
    end
  end
end
