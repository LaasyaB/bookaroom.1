require 'rails_helper'

RSpec.describe "room_types/index", type: :view do
  before(:each) do
    assign(:room_types, [
      RoomType.create!(
        :room => nil,
        :title => "Title",
        :description => "MyText"
      ),
      RoomType.create!(
        :room => nil,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of room_types" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
