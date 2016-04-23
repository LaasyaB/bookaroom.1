require 'rails_helper'

RSpec.describe "room_types/show", type: :view do
  before(:each) do
    @room_type = assign(:room_type, RoomType.create!(
      :room => nil,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
